import 'package:flutter/material.dart';

class PinInput extends StatefulWidget {
  final void Function(int value) onDone;
  const PinInput({super.key, required this.onDone});

  @override
  State<PinInput> createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  final List<FocusNode> _focusNodes = [];
  final List<TextEditingController> _controllers = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 4; i++) {
      _focusNodes.add(FocusNode());
      _controllers.add(TextEditingController());
    }
  }

  @override
  void dispose() {
    for (final node in _focusNodes) {
      node.dispose();
    }
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        4,
        (index) => SizedBox(
          width: 50,
          child: TextFormField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            keyboardType: TextInputType.number,
            maxLength: 1,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty && index < 3) {
                _focusNodes[index].unfocus();
                FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
              } else if (value.isEmpty && index != 0) {
                _focusNodes[index].unfocus();
                FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
                _controllers[index - 1].selection = TextSelection(
                  baseOffset: 0,
                  extentOffset: _controllers[index - 1].text.length,
                );
              }

              if (index == 3) {
                final code1 = _controllers[0].text;
                final code2 = _controllers[1].text;
                final code3 = _controllers[2].text;
                final code4 = _controllers[3].text;
                final allCode = code1 + code2 + code3 + code4;
                final pin = int.parse(allCode);
                if (allCode.length == 4) {
                  widget.onDone(pin);
                }
              }
            },
          ),
        ),
      ),
    );
  }
}

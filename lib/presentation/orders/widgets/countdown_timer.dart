import 'dart:async';

import 'package:flutter/material.dart';


import '../../../core/components/spaces.dart';
import '../../../core/core.dart';

class CountdownTimer extends StatefulWidget {
  final int minute;
  final void Function() onTimerCompletion;

  const CountdownTimer({
    super.key,
    required this.minute,
    required this.onTimerCompletion,
  });

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late int _remainingHours;
  late int _remainingMinutes;
  late int _remainingSeconds;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _remainingHours = widget.minute ~/ 60;
    _remainingMinutes = widget.minute % 60;
    _remainingSeconds = 0;
    _timer = Timer.periodic(const Duration(seconds: 1), _updateTimer);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _updateTimer(Timer timer) {
    if (_remainingHours == 0 &&
        _remainingMinutes == 0 &&
        _remainingSeconds == 0) {
      _timer.cancel();
      widget.onTimerCompletion();
    } else {
      setState(() {
        if (_remainingMinutes == 0) {
          _remainingHours--;
          _remainingMinutes = 59;
        } else if (_remainingSeconds == 0) {
          _remainingMinutes--;
          _remainingSeconds = 59;
        } else {
          _remainingSeconds--;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Time(_remainingHours),
        const SpaceWidth(8.0),
        _Time(_remainingMinutes),
        const SpaceWidth(8.0),
        _Time(_remainingSeconds),
      ],
    );
  }
}

class _Time extends StatelessWidget {
  final int time;
  const _Time(this.time);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      child: ColoredBox(
        color: AppColors.primary,
        child: SizedBox(
          width: 24.0,
          height: 24.0,
          child: Center(
            child: Text(
              '$time',
              style: const TextStyle(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

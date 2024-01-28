import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic12_grocery_app/data/models/auth_response_model/auth_api.dart';
import 'package:flutter_fic12_grocery_app/data/models/auth_response_model/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthApi authApi;
  LoginBloc(
    this.authApi,
  ) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final response = await authApi.login(event.email, event.password);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}

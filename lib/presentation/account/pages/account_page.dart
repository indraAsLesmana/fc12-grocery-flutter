import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/core.dart';
import '../../../core/router/app_router.dart';
import '../../auth/bloc/logout/logout_bloc.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Assets.icons.user.svg(),
            title: const Text(
              'Profil',
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Assets.icons.bag.svg(),
            title: const Text(
              'Pesanan',
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              context.pushNamed(
                RouteConstants.orderList,
                pathParameters: PathParameters(
                  rootTab: RootTab.account,
                ).toMap(),
              );
            },
          ),
          ListTile(
            leading: Assets.icons.location.svg(),
            title: const Text(
              'Alamat',
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Assets.icons.creditcard.svg(),
            title: const Text(
              'Pembayaran',
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {},
          ),
          BlocConsumer<LogoutBloc, LogoutState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  loaded: () {
                    context.goNamed(
                      RouteConstants.root,
                      pathParameters: PathParameters().toMap(),
                    );
                  },
                  error: (message) {
                    context.goNamed(
                      RouteConstants.login,
                    );
                  });
            },
            builder: (context, state) {
              return state.maybeWhen(orElse: () {
                return ListTile(
                  leading: const Icon(
                    Icons.login_outlined,
                    color: AppColors.primary,
                  ),
                  title: const Text(
                    'Logout',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onTap: () {
                    context.read<LogoutBloc>().add(const LogoutEvent.logout());
                  },
                );
              }, loading: () {
                return const CircularProgressIndicator();
              });
            },
          )
        ],
      ),
    );
  }
}

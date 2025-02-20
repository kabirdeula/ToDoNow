import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormBuilderState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: CustomElevatedButton.filled(
            label: 'login',
            onPressed: () {
              if (formKey.currentState?.saveAndValidate() ?? false) {
                EasyLoading.show(status: "Logging in...");
                final UserModel user = UserModel(
                  email: emailController.text,
                  password: passwordController.text,
                );
                context.read<AuthCubit>().login(user: user);
              }
            },
          ),
        );
      },
    );
  }
}

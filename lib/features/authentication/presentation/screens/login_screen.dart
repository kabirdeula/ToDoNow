import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../routes/routes.dart';
import '../../authentication.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: () => EasyLoading.show(status: "Logging in..."),
          authenticated: (user) {
            EasyLoading.dismiss();
            context.go(AppRoutes.dashboard.path);
          },
          error: (error) {
            EasyLoading.dismiss();
            EasyLoading.showError(error);
          },
          orElse: () {},
        );
      },
      child: AuthScreen(
        title: "Login",
        authSwitchText: "Don't have an account?",
        authSwitchAction: "register",
        location: AppRoutes.register.path,
        formKey: formKey,
        authenticationFields: [
          EmailField(controller: _emailController),
          const SizedBox(height: 16.0),
          PasswordField(controller: _passwordController),
          const Spacer(),
          AuthButton(
            label: "Login",
            onPressed: () {
              if (formKey.currentState?.saveAndValidate() ?? false) {
                context
                    .read<AuthCubit>()
                    .login(_emailController.text, _passwordController.text);
              }
            },
          ),
          const SizedBox(height: 16.0)
        ],
      ),
    );
  }
}

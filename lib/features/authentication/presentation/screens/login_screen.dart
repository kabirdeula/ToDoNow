import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:to_do_now/features/authentication/authentication.dart';
import 'package:to_do_now/routes/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

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

  void _onLoginPressed(BuildContext context) {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      EasyLoading.show(status: "Logging in...");
      final user = UserModel(
        email: _emailController.text,
        password: _passwordController.text,
      );
      context.read<AuthCubit>().login(user: user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.error != null) {
          EasyLoading.dismiss();
          EasyLoading.showError(state.error!);
          context.read<AuthCubit>().resetState();
        }
        if (state.isLoggedIn) {
          EasyLoading.dismiss();
          Future.delayed(const Duration(seconds: 3), () {
            if (!context.mounted) return;
            context.go(AppRoutes.dashboard.path);
          });
        }
      },
      child: AuthScreen(
        title: 'Login',
        authenticationFields: _buildLoginForm(context),
        authSwitchText: "Don't have an account?",
        authSwitchAction: 'register',
        location: AppRoutes.register.path,
        formKey: _formKey,
      ),
    );
  }

  List<Widget> _buildLoginForm(BuildContext context) {
    return [
      EmailField(controller: _emailController),
      const SizedBox(height: 16.0),
      PasswordField(controller: _passwordController),
      const Spacer(),
      AuthButton(
        label: 'login',
        formKey: _formKey,
        emailController: _emailController,
        passwordController: _passwordController,
        onPressed: () => _onLoginPressed(context),
      ),
      const SizedBox(height: 16.0),
    ];
  }
}

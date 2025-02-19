import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:to_do_now/core/themes/app_typography.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      body: ScreenPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login', style: AppTypography.headline1()),
            const SizedBox(height: 32.0),
            Text('Username'),
            const SizedBox(height: 8.0),
            CustomTextFormField.email(controller: emailController),
            const SizedBox(height: 16.0),
            Text('Password'),
            const SizedBox(height: 8.0),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return CustomTextFormField.password(
                  controller: passwordController,
                  isObscureText: state.isObscureText,
                  suffixIcon: IconButton(
                    onPressed: () =>
                        context.read<AuthCubit>().toggleObscureText(),
                    icon: Icon(
                      state.isObscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                );
              },
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton.filled(
                label: 'login',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 32.0),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('OR'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 32.0),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton.outline(
                label: 'login with google',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton.outline(
                label: 'login with apple',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 32.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text("Don't have an account? Register"),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:to_do_now/core/themes/app_typography.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/authentication/authentication.dart';
import 'package:to_do_now/routes/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.isLoggedIn) {
          Future.delayed(const Duration(seconds: 3), () {
            EasyLoading.dismiss();
            if (!context.mounted) return;
            context.go(AppRoutes.dashboard.path);
          });
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(),
        body: ScreenPadding(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: AutofillGroup(
              child: FormBuilder(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login', style: AppTypography.headline1()),
                    const SizedBox(height: 32.0),
                    EmailField(controller: emailController),
                    const SizedBox(height: 16.0),
                    PasswordField(controller: passwordController),
                    const Spacer(),
                    LoginButton(
                      formKey: formKey,
                      emailController: emailController,
                      passwordController: passwordController,
                    ),
                    const SizedBox(height: 32.0),
                    OrDivider(),
                    const SizedBox(height: 32.0),
                    SocialLoginButtons(),
                    const SizedBox(height: 32.0),
                    RegisterLink()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

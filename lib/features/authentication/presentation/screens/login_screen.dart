import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

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
        if (state.isLoggedIn) context.go(AppRoutes.dashboard.path);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(),
        body: ScreenPadding(
          child: AutofillGroup(
            child: FormBuilder(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login', style: AppTypography.headline1()),
                  const SizedBox(height: 32.0),
                  Text('Email'),
                  const SizedBox(height: 8.0),
                  CustomTextFormField.email(
                    name: "email",
                    controller: emailController,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ]),
                  ),
                  const SizedBox(height: 16.0),
                  Text('Password'),
                  const SizedBox(height: 8.0),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return CustomTextFormField.password(
                        name: "password",
                        controller: passwordController,
                        validator: FormBuilderValidators.required(),
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
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return SizedBox(
                        width: double.infinity,
                        child: state.isLoading
                            ? const Center(child: CircularProgressIndicator())
                            : CustomElevatedButton.filled(
                                label: 'login',
                                onPressed: () {
                                  if (formKey.currentState?.saveAndValidate() ??
                                      false) {
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
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      return SizedBox(
                        width: double.infinity,
                        child: CustomElevatedButton.outline(
                          label: 'login with google',
                          onPressed: () async =>
                              await context.read<AuthCubit>().googleLogin(),
                        ),
                      );
                    },
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
          ),
        ),
      ),
    );
  }
}

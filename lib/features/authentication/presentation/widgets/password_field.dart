import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;

  const PasswordField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Column(
          children: [
            Text('Password'),
            const SizedBox(height: 8.0),
            CustomTextFormField.password(
              name: "password",
              controller: controller,
              validator: FormBuilderValidators.required(),
              isObscureText: state.isObscureText,
              suffixIcon: IconButton(
                onPressed: () => context.read<AuthCubit>().toggleObscureText(),
                icon: Icon(
                  state.isObscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

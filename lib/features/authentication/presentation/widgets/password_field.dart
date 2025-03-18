import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../core/core.dart';

class PasswordField extends StatelessWidget {
  final String? title;
  final TextEditingController controller;

  const PasswordField({super.key, required this.controller, this.title});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordVisibilityCubit, bool>(
      builder: (context, isPasswordHidden) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title ?? 'Password'),
            const SizedBox(height: 8.0),
            CustomTextFormField.password(
              name: "password",
              controller: controller,
              validator: FormBuilderValidators.required(),
              isObscureText: isPasswordHidden,
              suffixIcon: IconButton(
                onPressed: () =>
                    context.read<PasswordVisibilityCubit>().toggle(),
                icon: Icon(
                  isPasswordHidden
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

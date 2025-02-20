import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/authentication/authentication.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton.outline(
                label: 'login with google',
                onPressed: () async =>
                    await context.read<AuthCubit>().googleLogin(),
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
          ],
        );
      },
    );
  }
}

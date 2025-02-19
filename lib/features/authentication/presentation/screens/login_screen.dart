import 'package:flutter/material.dart';
import 'package:to_do_now/core/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text('Login'),
            Text('Username'),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your Username',
              ),
            ),
            Text('Password'),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '********',
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton.filled(
                label: 'login',
                onPressed: () {},
              ),
            ),
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
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton.outline(
                label: 'login with google',
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton.outline(
                label: 'login with google',
                onPressed: () {},
              ),
            ),
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

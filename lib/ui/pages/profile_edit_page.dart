import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';
import 'package:larapay/ui/widgets/buttons.dart';
import 'package:larapay/ui/widgets/forms.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColour),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // USERNAME INPUT
                const CustomFormField(title: 'Username'),
                const SizedBox(height: 16),
                // FULL NAME INPUT
                const CustomFormField(title: 'Full Name'),
                const SizedBox(height: 16),
                // EMAIL ADDRESS INPUT
                const CustomFormField(title: 'Email Address'),
                const SizedBox(height: 16),
                // PASSWORD INPUT
                const CustomFormField(title: 'Password', obscureText: true),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                    title: 'Update Now',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/profile-edit-success', (route) => false);
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

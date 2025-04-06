import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';
import 'package:larapay/ui/widgets/buttons.dart';
import 'package:larapay/ui/widgets/forms.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Pin'),
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
                // OLD PIN INPUT
                const CustomFormField(title: 'Old PIN'),
                const SizedBox(height: 16),
                // NEW PIN INPUT
                const CustomFormField(title: 'New PIN'),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                    title: 'Update Now',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/profile-edit-success', (route) => false);
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}

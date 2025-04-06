import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';
import 'package:larapay/ui/widgets/buttons.dart';
import 'package:larapay/ui/widgets/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            decoration: BoxDecoration(
              color: whiteColour,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/img_profile.png'))),
                    // Add a check circle icon on the top right of the profile image
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 28,
                        height: 28,
                        // Give the box a white background and a green check circle
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: whiteColour),
                        child: Center(
                          child: Icon(
                            Icons.check_circle,
                            color: greenColour,
                            size: 24,
                          ),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  'Hanna Sabrina',
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_edit_profile.png',
                  title: 'Edit Profile',
                  onTap: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      // Add mounted check here
                      if (!context.mounted) return;
                      Navigator.pushNamed(context, '/profile-edit');
                    }
                  },
                ),
                const ProfileMenuItem(
                  iconUrl: 'assets/ic_pin.png',
                  title: 'My Pin',
                  onTap: null,
                ),
                const ProfileMenuItem(
                  iconUrl: 'assets/ic_wallet.png',
                  title: 'Wallet Settings',
                  onTap: null,
                ),
                const ProfileMenuItem(
                  iconUrl: 'assets/ic_reward.png',
                  title: 'My Rewards',
                  onTap: null,
                ),
                const ProfileMenuItem(
                  iconUrl: 'assets/ic_help.png',
                  title: 'Help Center',
                  onTap: null,
                ),
                const ProfileMenuItem(
                  iconUrl: 'assets/ic_logout.png',
                  title: 'Logout',
                  onTap: null,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          const CustomTextButton(
            title: 'Report a Problem',
            onPressed: null,
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

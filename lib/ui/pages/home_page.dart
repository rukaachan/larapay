import "package:flutter/material.dart";
import "package:larapay/shared/theme.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColour,

      // List of items in the bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        // Style of the bottom navigation bar
        selectedItemColor: blueColour,
        unselectedItemColor: blackColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle:
            blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
        unselectedLabelStyle: blackTextStyle.copyWith(
          fontSize: 10,
          fontWeight: medium,
        ),
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                width: 20,
                color: blueColour,
              ),
              label: 'Overview'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: 'Statistic'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
              ),
              label: 'Reward'),
        ],
      ),
    );
  }
}

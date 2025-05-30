import "package:flutter/material.dart";
import "package:larapay/shared/theme.dart";
import "package:larapay/ui/widgets/home_latest_transactions_item.dart";
import "package:larapay/ui/widgets/home_service_item.dart";
import "package:larapay/ui/widgets/home_tips_item.dart";
import "package:larapay/ui/widgets/home_user_item.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // List of items in the bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        color: whiteColour,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        notchMargin: 6,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColour,
          elevation: 0,
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
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: purpleColour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          child: Image.asset(
            'assets/ic_plus_circle.png',
            width: 24,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransactions(),
          buildSendAgain(),
          buildFriendlyTips()
        ],
      ),
    );
  }

  // Widget for top profile
  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        // Align the profile image to the right or just make it space betweeen
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Username',
                style:
                    blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/img_profile.png'))),
                // Add a check circle icon on the top right of the profile image
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 16,
                    height: 16,
                    // Give the box a white background and a green check circle
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: whiteColour),
                    child: Center(
                      child: Icon(
                        Icons.check_circle,
                        color: greenColour,
                        size: 14,
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/img_bg_card.png'))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Username",
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 8),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle,
          ),
          Text(
            'Rp. 12.500',
            style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          )
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColour),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(fontWeight: medium),
              ),
              const Spacer(),
              Text(
                '55% ',
                style: greenTextStyle.copyWith(fontWeight: semiBold),
              ),
              Text(
                'of Rp 20.000',
                style: blackTextStyle.copyWith(fontWeight: semiBold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // ClipRRect to make the border radius of the progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            // Line Progress
            child: LinearProgressIndicator(
              value: 0.55,
              minHeight: 5,
              valueColor: AlwaysStoppedAnimation(greenColour),
              backgroundColor: lightBackgroundColour,
            ),
          )
        ],
      ),
    );
  }

  Widget buildServices() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                iconUrl: 'assets/ic_topup.png',
                title: 'Topup',
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_send.png',
                title: 'Send',
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_withdraw.png',
                title: 'Withdraw',
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_more.png',
                title: 'More',
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColour),
            child: const Column(
              children: [
                HomeLatestTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat1.png',
                    title: 'Topup',
                    time: 'Yesterday',
                    value: '+ 450.000'),
                HomeLatestTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat2.png',
                    title: 'Cashback',
                    time: 'Sep 11',
                    value: '+ 22.000'),
                HomeLatestTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat3.png',
                    title: 'Withdraw',
                    time: 'Sep 2',
                    value: '- 5.000'),
                HomeLatestTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat4.png',
                    title: 'Transfer',
                    time: 'Aug 27',
                    value: '- 123.000'),
                HomeLatestTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat5.png',
                    title: 'Electric',
                    time: 'Feb 18',
                    value: '- 12.300.000'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          // Row is not design for scrolling
          // So we need to use SingleChildScrollView
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                    imageUrl: 'assets/img_friend1.png', username: 'chila'),
                HomeUserItem(
                    imageUrl: 'assets/img_friend2.png', username: 'rizka'),
                HomeUserItem(
                    imageUrl: 'assets/img_friend3.png', username: 'fahrizal'),
                HomeUserItem(
                    imageUrl: 'assets/img_friend4.png', username: 'kanfi')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 40,
            runSpacing: 20,
            children: [
              HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'Best tips for using a credit card',
                  url:
                      'https://www.capitalone.com/learn-grow/money-management/tips-using-credit-responsibly/'),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips2.png',
                  title: 'Spot the good pie of finance model',
                  url: 'https://moneywise.com/investing/best-m1-finance-pies'),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips3.png',
                  title: 'Great hack to get better advices',
                  url:
                      'https://www.buzzfeed.com/hannahloewentheil/24-wish-i-knew-this-yesterday-life-hacks-that-changed'),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips4.png',
                  title: 'Save more penny buy this instead',
                  url:
                      'https://bennisinc.wordpress.com/2013/01/28/a-penny-saved-is-more-than-a-penny-earned/'),
            ],
          )
        ],
      ),
    );
  }
}

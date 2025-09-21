import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';
import 'package:larapay/ui/widgets/bank_items.dart';
import 'package:larapay/ui/widgets/buttons.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Up'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text("Wallet",
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
          const SizedBox(height: 10),
          Row(children: [
            Image.asset('assets/img_wallet.png', width: 80),
            const SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "8008 2208 1996",
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              const SizedBox(height: 2),
              Text("Prabuda Riska",
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ))
            ])
          ]),
          Text("Select Bank",
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
          const SizedBox(height: 14),
          const BankItem(
            title: "BANK BCA",
            imageUrl: "assets/img_bank_bca.png",
          ),
          const BankItem(
              title: "BANK BNI", imageUrl: "assets/img_bank_bni.png"),
          const BankItem(
              title: "BANK Mandiri", imageUrl: "assets/img_bank_mandiri.png"),
          const BankItem(
              title: "BANK OCBC", imageUrl: "assets/img_bank_ocbc.png"),
          const SizedBox(height: 12),
          CustomFilledButton(
              title: 'Continue',
              onPressed: () {
                Navigator.pushNamed(context, '/topup-amount');
              }),
          const SizedBox(height: 57)
        ],
      ),
    );
  }
}

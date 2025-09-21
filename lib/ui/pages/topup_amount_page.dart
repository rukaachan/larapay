import 'package:flutter/material.dart';
import 'package:larapay/shared/theme.dart';
import 'package:larapay/ui/widgets/buttons.dart';

class TopUpAmountPage extends StatefulWidget {
  const TopUpAmountPage({super.key});

  @override
  State<TopUpAmountPage> createState() => _TopUpAmountPageState();
}

class _TopUpAmountPageState extends State<TopUpAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  addAmount(String number) {
    // Add the number to the pin
    setState(() {
      if (amountController.text == '0') {
        amountController.text = "";
      }
      amountController.text = amountController.text + number;
    });
  }

  // Create function deleteAmount button
  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        // Remove the last number from the pin, using substring
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColour,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(height: 60),
          Center(
            child: Text(
              'Total Amount',
              style:
                  whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                  controller: amountController,
                  cursorColor: greyColour,
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                      fontSize: 36, fontWeight: medium, letterSpacing: 16),
                  decoration: InputDecoration(
                    prefixIcon: Text('Rp',
                        style: whiteTextStyle.copyWith(
                            fontSize: 36, fontWeight: medium)),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: greyColour),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              CustomInputButton(
                title: '1',
                onTap: () {
                  addAmount('1');
                },
              ),
              CustomInputButton(
                title: '2',
                onTap: () {
                  addAmount('2');
                },
              ),
              CustomInputButton(
                title: '3',
                onTap: () {
                  addAmount('3');
                },
              ),
              CustomInputButton(
                title: '4',
                onTap: () {
                  addAmount('4');
                },
              ),
              CustomInputButton(
                title: '5',
                onTap: () {
                  addAmount('5');
                },
              ),
              CustomInputButton(
                title: '6',
                onTap: () {
                  addAmount('6');
                },
              ),
              CustomInputButton(
                title: '7',
                onTap: () {
                  addAmount('7');
                },
              ),
              CustomInputButton(
                title: '8',
                onTap: () {
                  addAmount('8');
                },
              ),
              CustomInputButton(
                title: '9',
                onTap: () {
                  addAmount('9');
                },
              ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              CustomInputButton(
                title: '0',
                onTap: () {
                  addAmount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: numberBackgroundColour),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColour,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          CustomFilledButton(
              title: 'Checkout Now',
              onPressed: () async {
                if (await Navigator.pushNamed(context, '/pin') == true) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/topup-success', (route) => false);
                }
              }),
          const SizedBox(height: 25),
          CustomTextButton(title: 'Terms & Conditions'),
          const SizedBox(height: 40)
        ],
      ),
    );
  }
}

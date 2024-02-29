import 'package:calculatarapp/constant/colors.dart';
import 'package:calculatarapp/provider/cal_provider.dart';
import 'package:calculatarapp/screens/widgets.dart';
import 'package:calculatarapp/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/cal_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));

    return Consumer<CalculatorProvider>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Calculator App"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            CustomTextField(
              controller: provider.compController,
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              padding: padding,
              decoration: decoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonList[index + 4]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => buttonList[index + 8]),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => buttonList[index + 12]),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => buttonList[index + 15]),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      const CalculateButton()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}

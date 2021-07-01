import 'package:flutter/material.dart';

import '../../../hunter.dart';

class InitialVacanciesWidget extends StatelessWidget {
  const InitialVacanciesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerWidget.rectangular(height: 18.0),
        const SizedBox(height: 10.0),
        ShimmerWidget.rectangular(
          height: 18.0,
          width: MediaQuery.of(context).size.width / 2.0,
        ),
        const SizedBox(height: 20.0),
        ShimmerWidget.rectangular(height: 40.0),
        const SizedBox(height: 30.0),
        ShimmerWidget.rectangular(
          height: 18.0,
          width: MediaQuery.of(context).size.width / 2.0,
        ),
        const SizedBox(height: 10.0),
        for (int i = 0; i < 3; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: AppColor.red),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 5.0),
                    child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ShimmerWidget.circular(
                                  height: 30.0, width: 30.0),
                              const SizedBox(
                                width: 10.0,
                              ),
                              ShimmerWidget.rectangular(
                                height: 18.0,
                                width: MediaQuery.of(context)
                                    .size
                                    .width /
                                    2.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          for (int i = 0; i < 3; i++)
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0),
                              child: ShimmerWidget.rectangular(
                                  height: 18.0),
                            ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          ShimmerWidget.rectangular(
                            height: 18.0,
                            width:
                            MediaQuery.of(context).size.width /
                                2.0,
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

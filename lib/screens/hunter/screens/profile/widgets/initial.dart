import 'package:flutter/material.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';

class InitialProfileWidget extends StatelessWidget {
  const InitialProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerWidget.rectangular(
            width: MediaQuery.of(context).size.width / 2.0,
            height: 18.0,
          ),
          Row(
            children: [
              Row(
                children: [
                  ShimmerWidget.rectangular(height: 60.0, width: 60.0),
                 const SizedBox(width: 30.0),
                  ShimmerWidget.rectangular(height: 60.0, width: 60.0),
                ],
              ),
              const Spacer(),
              ShimmerWidget.circular(height: 95.0, width: 95.0),
            ],
          ),
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ShimmerWidget.rectangular(
                    height: 30.0,
                    width: 40.0,
                  ),
                ),
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1.2,
            height: 40.0,
          ),
          for (int i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerWidget.rectangular(
                      height: 18.0,
                      width: MediaQuery.of(context).size.width / 2.0,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: ShimmerWidget.rectangular(height: 18.0),
                      ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ShimmerWidget.rectangular(
                      height: 18.0,
                      width: MediaQuery.of(context).size.width / 2.0,
                    ),
                  ]),
            ),
        ],
      ),
    );
  }
}

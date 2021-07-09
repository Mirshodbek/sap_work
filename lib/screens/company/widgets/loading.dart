import 'package:flutter/material.dart';
import 'package:sap_work/screens/widgets/shimmer.dart';

class LoadingVacanciesWidget extends StatelessWidget {
  const LoadingVacanciesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          for (int i = 0; i < 2; i++)
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ShimmerWidget.rectangular(
                    height: 18, width: MediaQuery.of(context).size.width / 3),
              ),
              for (int i = 0; i < 3; i++)
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ShimmerWidget.rectangular(height: 18)),
            ]),
        ]));
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        for (int i = 0; i < 2; i++)
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ShimmerWidget.rectangular(
                height: 18, width: MediaQuery.of(context).size.width / 2),
            for (int i = 0; i < 4; i++)
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ShimmerWidget.rectangular(height: 18)),
          ]),
      ]),
    );
  }
}

class LoadingChat extends StatelessWidget {
  const LoadingChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          for (int i = 0; i < 4; i++)
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                children: [
                  ShimmerWidget.circular(height: 40, width: 40),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerWidget.rectangular(height: 18, width: 100),
                      const SizedBox(height: 20),
                      ShimmerWidget.rectangular(
                          height: 18,
                          width: MediaQuery.of(context).size.width / 2),
                    ],
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
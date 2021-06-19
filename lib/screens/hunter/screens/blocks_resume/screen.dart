import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sap_work/screens/widgets/red_button.dart';

import '../../hunter.dart';

class BlocksResumeScreen extends StatelessWidget {
  static const String id ='/blocks';
  const BlocksResumeScreen({Key? key}) : super(key: key);

  static Widget create(){
    return BlocksResumeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: BackWardWidget(
          () {
            Navigator.of(context).pop();
          },
        ),
        leadingWidth: MediaQuery.of(context).size.width,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
              "Выберите какие блоки необходимо показать или скрыть в резюме",
              style: AppTextTheme.smallTextMediumBlack,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final blocks = Lists.blocksResumeList[index];
                return ListTile(
                  title: RedButtonWidget(blocks, () {},
                      Lists.blocksResumeList.indexOf(blocks) != index),
                );
              },
              itemCount: Lists.blocksResumeList.length,
            ),
          ],
        ),
      ),
    );
  }
}

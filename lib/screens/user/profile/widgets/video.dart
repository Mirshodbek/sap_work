import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sap_work/resources/icons.dart';
import 'package:sap_work/resources/theme/color_theme.dart';
import 'package:sap_work/resources/theme/text_theme.dart';
import 'package:video_player/video_player.dart';

class VideoControllerWidget extends StatefulWidget {
  const VideoControllerWidget({Key? key}) : super(key: key);

  @override
  _VideoControllerWidgetState createState() => _VideoControllerWidgetState();
}

class _VideoControllerWidgetState extends State<VideoControllerWidget> {
  final File file = File("");
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset('assets/video/video.mp4')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize()
          .then((value) => setState(() {}))
          .then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text("Добавить видео-визитка",
                  style: AppTextTheme.smallTextMediumBlack),
            ),
            IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: SvgPicture.asset(AppIcons.trash),
                )),
            IconButton(
                onPressed: () async {
                  final file = await pickVideoFile();
                  if (file == null) return;

                  controller = VideoPlayerController.file(file)
                    ..addListener(() => setState(() {}))
                    ..setLooping(true)
                    ..initialize().then((_) {
                      controller.play();
                      setState(() {});
                    });
                },
                icon: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: SvgPicture.asset(AppIcons.plus_black),
                )),
          ],
        ),
        const SizedBox(height: 10),
        VideoPlayerWidget(controller: controller),
      ],
    );
  }

  Future<File?> pickVideoFile() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.video);
    if (result == null) return null;

    return File(result.files.single.path!);
  }
}

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => controller.value.isInitialized
      ? Container(alignment: Alignment.topCenter, child: buildVideo())
      : Container(
          height: 200,
          child: Center(child: CircularProgressIndicator()),
        );

  Widget buildVideo() => Stack(
        children: <Widget>[
          buildVideoPlayer(),
          Positioned.fill(child: BasicOverlayWidget(controller: controller)),
        ],
      );

  Widget buildVideoPlayer() => Container(
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColor.red)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: VideoPlayer(controller),
        ),
      );
}

class BasicOverlayWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const BasicOverlayWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () =>
            controller.value.isPlaying ? controller.pause() : controller.play(),
        child: Stack(
          children: <Widget>[
            buildPlay(),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: buildIndicator(),
            ),
          ],
        ),
      );

  Widget buildIndicator() => VideoProgressIndicator(
        controller,
        allowScrubbing: true,
      );

  Widget buildPlay() => controller.value.isPlaying
      ? Container()
      : Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColor.red)),
          child: SvgPicture.asset(AppIcons.play),
        );
}

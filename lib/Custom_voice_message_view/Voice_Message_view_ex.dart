import 'package:ai_sleep/Custom_voice_message_view/play_btn.dart';
import 'package:ai_sleep/Custom_voice_message_view/voice_controller_ex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voice_message_package/src/helpers/play_status.dart';
import 'package:voice_message_package/src/helpers/utils.dart';
import 'package:voice_message_package/src/widgets/noises.dart';
/// A widget that displays a voice message view with play/pause functionality.
/// The [VoiceMessageViewEX] widget is used to display a voice message with customizable appearance and behavior.
/// It provides a play/pause button, a progress slider, and a counter for the remaining time.
class VoiceMessageViewEX extends StatelessWidget {
  const VoiceMessageViewEX({
    Key? key,
    required this.controller,
    this.backgroundColor = Colors.transparent,
    this.activeSliderColor = Colors.white,
    this.notActiveSliderColor,
    this.circlesColor = Colors.red,
    this.innerPadding = 0,
    this.cornerRadius = 20,
    this.size = 45,
    this.refreshIcon = const Icon(
      Icons.refresh,
      color: Colors.white,
    ),
    this.pauseIcon = const Icon(
      Icons.pause_rounded,
      color: Colors.white,
    ),
    this.playIcon = const Icon(
      Icons.play_arrow_rounded,
      color: Colors.white,
    ),
    this.stopDownloadingIcon = const Icon(
      Icons.close,
      color: Colors.white,
    ),
    this.playPauseButtonDecoration,
    this.circlesTextStyle = const TextStyle(
      color: Colors.white,
      fontSize: 10,
      fontWeight: FontWeight.bold,
    ),
    this.counterTextStyle = const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
    ),
    this.playPauseButtonLoadingColor = Colors.white,
  }) : super(key: key);

  /// The controller for the voice message view.
  final VoiceControllerEx controller;

  /// The background color of the voice message view.
  final Color backgroundColor;

  /// The color of the active slider.
  final Color activeSliderColor;

  /// The color of the not active slider.
  final Color? notActiveSliderColor;

  /// The color of the circles in the UI.
  final Color circlesColor;

  /// The text style of the circles.
  final TextStyle circlesTextStyle;

  /// The text style of the counter.
  // final TextStyle counterTextStyle;
  final TextStyle counterTextStyle;

  /// The padding between the inner content and the outer container.
  final double innerPadding;

  /// The corner radius of the outer container.
  final double cornerRadius;

  /// The size of the play/pause button.
  final double size;

  /// The refresh icon of the play/pause button.
  final Widget refreshIcon;

  /// The pause icon of the play/pause button.
  final Widget pauseIcon;

  /// The play icon of the play/pause button.
  final Widget playIcon;

  /// The stop downloading icon of the play/pause button.
  final Widget stopDownloadingIcon;

  /// The decoration for the play/pause button.
  final Decoration? playPauseButtonDecoration;

  /// The loading color of the play/pause button.
  final Color playPauseButtonLoadingColor;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final color = circlesColor;
    final newTheme = theme.copyWith(
      sliderTheme: SliderThemeData(
        trackShape: CustomTrackShape(),
        thumbShape: SliderComponentShape.noThumb,
        minThumbSeparation: 0,
      ),
      splashColor: Colors.transparent,
    );

    return Container(
      width: double.infinity,
      //padding: EdgeInsets.all(innerPadding),
      decoration: BoxDecoration(
        color: Color(0xFF061238),
        borderRadius: BorderRadius.circular(cornerRadius),
      ),
      child: ValueListenableBuilder(
        valueListenable: controller.updater,
        builder: (context, value, child) {
          return Row(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              ///current text
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(controller.remindingTime, style: GoogleFonts.inter(fontSize: 11.sp, fontWeight: FontWeight.w400, color: Color(0xFF848BBD))),
              ),
              const SizedBox(width: 11,),
              /// Play/Pause button
              Padding(
                padding: const EdgeInsets.only(top: 8,right: 3),
                child: PlayPauseButtonEX(
                  controllerEx: controller,
                  playIcon: const Icon(Icons.play_arrow, size: 12, color: Color(0xFF2CEADE)),
                  pauseIcon: const Icon(Icons.pause, size: 12, color: Color(0xFF2CEADE)),
                ),
              ),
              //  const SizedBox(width: 10),

              /// Slider & Noises
              _noises(newTheme),
              //const SizedBox(width: 12),
              Spacer(),
              /// Speed change button
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Snoring ",
                    style: GoogleFonts.inter(
                      color: Color(0xFF848BBD),
                      fontSize:8.sp,
                    ),
                  ),
                  Text(
                    "1 min",
                    style: GoogleFonts.inter(
                        color: Color(0xFFFFFFFF).withOpacity(.7),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500),
                  ),

                ],
              ),
              // _changeSpeedButton(color),
              //  const SizedBox(width: 10),
            ],
          );
        },
      ),
    );
  }

  SizedBox _noises(ThemeData newTheme) => SizedBox(
    height: 30,
    width: controller.noiseWidth,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Noises(
          rList: controller.randoms!,
          activeSliderColor: activeSliderColor,
        ),
        AnimatedBuilder(
          animation: CurvedAnimation(
            parent: controller.animController,
            curve: Curves.ease,
          ),
          builder: (BuildContext context, Widget? child) {
            return Positioned(
              left: controller.animController.value,
              child: Container(
                width: controller.noiseWidth,
                height: 24,
                color: notActiveSliderColor ?? backgroundColor.withOpacity(.4),
              ),
            );
          },
        ),
        Opacity(
          opacity: 0,
          child: Container(
            width: controller.noiseWidth,
            color: Colors.red,
            child: Theme(
              data: newTheme,
              child: Slider(
                value: controller.currentMillSeconds,
                max: controller.maxMillSeconds,
                onChangeStart: controller.onChangeSliderStart,
                onChanged: controller.onChanging,
                onChangeEnd: (value) {
                  controller.onSeek(
                    Duration(milliseconds: value.toInt()),
                  );
                  controller.play();
                },
              ),
            ),
          ),
        ),
      ],
    ),
  );

  Transform _changeSpeedButton(Color color) => Transform.translate(
    offset: const Offset(0, -7),
    child: GestureDetector(
      onTap: () {
        controller.changeSpeed();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          controller.speed.playSpeedStr,
          style: circlesTextStyle,
        ),
      ),
    ),
  );
}

/// Custom track shape for the slider.
class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    const double trackHeight = 10;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

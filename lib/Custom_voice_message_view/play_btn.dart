import 'package:flutter/material.dart';
import 'package:voice_message_package/src/widgets/loading_widget.dart';
import 'package:voice_message_package/voice_message_package.dart';

import 'voice_controller_ex.dart';

/// A widget representing a play/pause button.
///
/// This button can be used to control the playback of a media player.
class PlayPauseButtonEX extends StatelessWidget {
  const PlayPauseButtonEX({
    super.key,
    required this.controllerEx,
    required this.playIcon,
    required this.pauseIcon,
  });

  /// The controller for the voice message view.
  final VoiceControllerEx controllerEx;

  /// The button Play Icon
  final Widget playIcon;

  /// The button Pause Icon
  final Widget pauseIcon;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: controllerEx.isPlaying ? controllerEx.pausePlaying : controllerEx.play,
    child: controllerEx.isPlaying ? pauseIcon : playIcon,
  );
}

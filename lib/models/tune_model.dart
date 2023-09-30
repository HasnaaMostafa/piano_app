import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';

class TuneModel{
  final Color color;
  final String highSound;
  final String lowSound;

  const TuneModel({
    required this.color,
    required this.highSound,
  required this.lowSound});

  void playHighSound(){
    final player=AudioPlayer();
    player.play(AssetSource(highSound));
  }

  void playLowSound(){
    final player=AudioPlayer();
    player.play(AssetSource(lowSound));
  }


}
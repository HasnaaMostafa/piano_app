import 'package:flutter/material.dart';
import 'package:tune_app/Widgets/tune_item.dart';
import 'package:tune_app/models/tune_model.dart';

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

 final  List<TuneModel> tunes= const [
   TuneModel(color: Colors.black, highSound: "higher_1.mp3",lowSound:"lower_1.mp3" ),
   TuneModel(color: Colors.black, highSound: "higher_2.mp3",lowSound:"lower_2.mp3" ),
   TuneModel(color: Colors.black, highSound: "higher_3.mp3",lowSound:"lower_3.mp3"),
   TuneModel(color: Colors.black, highSound: "higher_4.mp3",lowSound:"lower_4.mp3" ),
   TuneModel(color: Colors.black, highSound: "higher_5.mp3",lowSound:"lower_5.mp3" ),
   TuneModel(color: Colors.black, highSound: "higher_6.mp3",lowSound:"lower_6.mp3" ),
   TuneModel(color: Colors.black, highSound: "higher_7.mp3",lowSound:"lower_7.mp3" ),
   TuneModel(color: Colors.black, highSound: "higher_8.mp3",lowSound:"lower_8.mp3"),

 ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: tunes
              .map(
                  (e) => TuneItem(tune: e,))
              .toList(),
        ),
      ),
    );
  }

  // List<TuneItem> getTuneItems(){
  //   List<TuneItem> items=[];
  //
  //   for(var color in tuneColors){
  //     items.add(TuneItem(color:color,));
  //   }
  //  return items;
  // }

}

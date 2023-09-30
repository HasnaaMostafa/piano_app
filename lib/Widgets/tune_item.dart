import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  TuneItem({super.key,required this.tune});
  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          tune.playHighSound();
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: tune.color,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    offset: Offset(0,2),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
            // Small black button
            Positioned(
              top: 0,
              bottom: 10, // Adjust the positioning of the black button
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white,
                child: Center(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: (){
                          tune.playLowSound();
                        },
                        child: Container(
                          width: 120,
                          height: 40,
                          color: Colors.black,
                        ),
                      ),
                    )
                ),
              ),
            ),
          ],
          ),
        ),
    );
  }
}

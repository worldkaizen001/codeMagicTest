// import 'package:flutter/material.dart';

// // Base Button Class
// class MyButton extends StatelessWidget {
//   final String label;

//   MyButton({required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text(label),
//     );
//   }
// }

// // Extended Button Class with Animation
// class AnimatedButton extends MyButton {
//   AnimatedButton({required String label}) : super(label: label);

//   @override
//   Widget build(BuildContext context) {
//     return ScaleTransition(
//       scale: AnimationController(
//         vsync: TickerProviderStateMixin(),
//         duration: Duration(seconds: 1),
//       ),
//       child: super.build(context),
//     );
//   }
// }


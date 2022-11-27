import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 18,
      height: 18,
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 3,
          color: Colors.green,
        ),
      ),
    );
  }
}

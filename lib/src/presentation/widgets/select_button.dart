import 'package:beer_app/src/assets/beer_icon.dart';
import 'package:flutter/material.dart';

class SelectButton extends StatelessWidget {
  final bool accept;
  final VoidCallback? onPressed;

  const SelectButton.accept({this.onPressed}) : accept = true;

  const SelectButton.reject({this.onPressed}) : accept = false;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      icon: accept
          ? const CustomPaint(
              size: Size.square(32),
              painter: BeerIconPainter(
                color: Colors.white,
              ),
            )
          : const Icon(
              Icons.cancel_outlined,
              size: 32,
            ),
      label: Text(
        accept ? 'Accept' : 'Reject',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: FilledButton.styleFrom(
        minimumSize: const Size(128, 48),
        backgroundColor: accept ? Colors.green : Colors.red,
      ),
      onPressed: onPressed,
    );
  }
}

import 'package:flutter/material.dart';

class LetterByLetterText extends StatefulWidget {
  final String text;
  final Duration duration;

  LetterByLetterText({required this.text, required this.duration});

  @override
  _LetterByLetterTextState createState() => _LetterByLetterTextState();
}
class _LetterByLetterTextState extends State<LetterByLetterText>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<int> _textAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _textAnimation = IntTween(
      begin: 0,
      end: widget.text.length,
    ).animate(_animationController);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        final textToShow = widget.text.substring(0, _textAnimation.value);
        return Text(textToShow, style: TextStyle(fontSize: 16)); // Customize your text style as needed
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

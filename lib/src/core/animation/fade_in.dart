
import 'package:flutter/material.dart';

class FadeInleft extends StatefulWidget {
  Widget? animatedWidget;
  FadeInleft({Key? key, this.animatedWidget}) : super(key: key);

  @override
  _FadeInleftState createState() => _FadeInleftState();
}

class _FadeInleftState extends State<FadeInleft> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        duration: const Duration(milliseconds: 00),
        tween: Tween<double>(begin: 1, end: 1),
        child: widget.animatedWidget,
        builder: (context, double _value, Widget? child) {
          return Opacity(
              opacity: _value,
              child: TweenAnimationBuilder(
                  duration: const Duration(seconds: 1),
                  tween: Tween<double>(begin: 50, end: 0),
                  child: widget.animatedWidget,
                  builder: (context, double _value, Widget? child) {
                    return Padding(
                      padding: EdgeInsets.only(
                        right: _value * 2,
                      ),
                      child: child,
                    );
                  }));
        });
  }}
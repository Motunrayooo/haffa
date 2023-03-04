

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haffa/src/core/animation/fade_in.dart';
import 'package:haffa/src/core/util/theme/extensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String image = 'assets/images/haffa logo.png';
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
                child: Image.asset(
              image,
              height: 60.sp,
            )),
            const Spacer(),
            FadeInleft(
              animatedWidget: Text(
                '...holla to a friend',
                style: context.theme.textTheme.bodyMedium!.copyWith(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
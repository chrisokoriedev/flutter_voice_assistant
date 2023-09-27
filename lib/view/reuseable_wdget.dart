import 'package:flutter/material.dart';

class ResuableCompenet extends StatelessWidget {
  final String title;
  final String des;
  final VoidCallback? press;
  final Color color;
  const ResuableCompenet({
    super.key,
    required this.textStyle,
    required this.title,
    required this.des,
    this.press,
    required this.color,
  });

  final TextTheme textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: textStyle.bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold, height: 2)),
            Text(des,
                style: textStyle.bodyMedium!
                    .copyWith(fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}

class Gap extends StatelessWidget {
  const Gap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 20);
  }
}

import 'package:flutter/material.dart';

import '/extension.dart';
import '../constants.dart';

class CounterBadge extends StatelessWidget {
  const CounterBadge({
    this.count,
  });

  final int? count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
          color: kBadgeColor, borderRadius: BorderRadius.circular(9)),
      child: Text(
        count != null ? count.toString() : '0',
        style: Theme.of(context).textTheme.caption!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
      ),
    ).addNeumorphism(
      offset: Offset(4, 4),
      borderRadius: 9,
      blurRadius: 4,
      topShadowColor: Colors.white,
      bottomShadowColor: Color(0xFF30384D).withOpacity(0.3),
    );
  }
}

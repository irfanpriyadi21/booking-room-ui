import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SelectionProfile extends StatelessWidget {
  const SelectionProfile({Key? key,
  required this.icon,
    required this.text,
    required this.logic,

  }) : super(key: key);

  final icon;
  final text;
  final logic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: logic,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: icon
          ),
          const SizedBox(
            width: 19,
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'Bold',
                fontSize: 14,
              ),
            ),
          ),
          const Icon(
            Ionicons.chevron_forward,
            size: 23,
          ),
        ],
      ),
    );
  }
}

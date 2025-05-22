import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyJobKeys extends StatelessWidget {
  final List<String> keys;
  const CompanyJobKeys({super.key, required this.keys});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22.w),
          child: Text(
            "Key Responsibilities :",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 18.sp),
          ),
        ),
        ..._buildBulletList(keys),
      ],
    );
  }
}

List<Widget> _buildBulletList(List<String> items) {
  return items
      .map(
        (item) => Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("• ", style: TextStyle(fontSize: 16, color: Colors.white)),
              Expanded(
                child: Text(
                  item,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      )
      .toList();
}

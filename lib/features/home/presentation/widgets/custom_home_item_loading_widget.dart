import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monglish_app/core/helpers/spacing.dart';

class CustomHomeItemLoadingWidget extends StatelessWidget {
  const CustomHomeItemLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const LoadingItem(),
          verticalSpace(16),
          const LoadingItem(),
          verticalSpace(16),
          const LoadingItem(),
          verticalSpace(16),
          const LoadingItem(),
          verticalSpace(16),
          const LoadingItem(),
        ],
      ),
    );
  }
}

class LoadingItem extends StatelessWidget {
  const LoadingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[500],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150.w,
                      height: 10.h,
                      color: Colors.grey[300],
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      width: 80.w,
                      height: 10.h,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              height: 10.h,
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.grey[300],
            ),
            SizedBox(height: 10.h),
            Container(
              height: 10.h,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Colors.grey[300],
            ),
            SizedBox(height: 10.h),
            Container(
              height: 10.h,
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.grey[300],
            ),
            SizedBox(height: 10.h),
            Container(
              height: 10.h,
              width: MediaQuery.of(context).size.width * 0.4,
              color: Colors.grey[300],
            ),
            SizedBox(height: 10.h),
            Container(
              height: 10.h,
              width: MediaQuery.of(context).size.width * 0.2,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}

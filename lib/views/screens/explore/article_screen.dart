import 'package:flutter/material.dart';
import 'package:ovu_application/views/base/common/custom_back_icon.dart';
import 'package:ovu_application/views/base/text_widget/icon_text_view.dart';
import 'package:ovu_application/views/base/quotation_container_view.dart';
import 'package:sizer/sizer.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackIcon(),
                  SizedBox(width: 25),
                  Expanded(
                      child: Text(title,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.sp),
                          textAlign: TextAlign.center)),
                  SizedBox(width: 50)
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextView(
                        icon: 'time_black.png',
                        text: '3 min read',
                        onTap: () {}),
                    Row(children: [
                      IconTextView(
                          icon: 'share_blue.png',
                          text: 'share',
                          color: Colors.blue,
                          onTap: () {}),
                      SizedBox(width: 10),
                      IconTextView(
                          icon: 'save_blue.png',
                          text: 'save',
                          color: Colors.blue,
                          onTap: () {}),
                    ])
                  ]),
            ),
            SizedBox(height: 25),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Image.asset('assets/products_images/Frame 237.png',
                      fit: BoxFit.fitWidth),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),
                        SizedBox(height: 25),
                        Image.asset('assets/products_images/image 1570.png',
                            fit: BoxFit.fitWidth),
                        SizedBox(height: 25),
                        Text(
                            'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
                        SizedBox(height: 25),
                        QuotationContainerView(
                            text:
                                'You\'ve gotta dance like there\'s nobody watching, Love like you\'ll never be hurt, Sing like there\'s nobody listening, And live like it\'s heaven on earth'),
                        SizedBox(height: 25),
                        Text(
                            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.\n\n The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.'),
                        SizedBox(height: 25),
                        Image.asset('assets/products_images/5_images.png',
                            fit: BoxFit.fitWidth),
                        SizedBox(height: 25),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

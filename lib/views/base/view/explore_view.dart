import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:ovu_application/helper/utils.dart';

class ExpolreView extends StatelessWidget {
  const ExpolreView(
      {super.key,
      required this.valueCheck,
      required this.image,
      required this.type,
      required this.timeAgo,
      required this.description});

  final String valueCheck, image, type, timeAgo, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: valueCheck == 'Video'.toUpperCase() ? 250 : 160,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image.asset(image, fit: BoxFit.fill)
              // FadeInImage.assetNetwork(
              //   placeholder: imageList[index],
              //   image: imageList[index],
              //   fit: BoxFit.cover,
              // ),
              ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: valueCheck == 'Video'.toUpperCase()
                    ? Color.fromRGBO(181, 140, 255, 0.16)
                    : Color.fromRGBO(93, 214, 165, 0.24),
              ),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Text(type.tr),
              ),
            ),
            Row(
              children: [
                Utils.customIcon(icon: 'time_icon.png', width: 20, height: 20),
                SizedBox(width: 5),
                Text(
                  timeAgo.tr,
                  style: TextStyle(
                      color: valueCheck == 'Video'.toUpperCase()
                          ? PURBLE_COLOR
                          : GREEN_COLOR),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 10),
        Text(
          description.tr,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
        )
      ],
    );
  }
}

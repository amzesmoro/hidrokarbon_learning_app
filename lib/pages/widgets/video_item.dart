import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoItem extends StatelessWidget {
  final videoName;
  final videoUrl;

  VideoItem({this.videoName, this.videoUrl});

  void _lauchURL() async {
    await canLaunch(videoUrl) ? await launch(videoUrl, forceSafariVC: false) : throw 'Could not launch $videoUrl';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _lauchURL,
        style: ElevatedButton.styleFrom(
          onPrimary: whiteColor,
          primary: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/play_button.png',
                width: 75,
                height: 77,
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Text(
                  videoName,
                  style: semiBoldBlueTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

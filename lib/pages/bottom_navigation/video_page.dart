import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/pages/widgets/video_item.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 24,
                ),
                child: Text(
                  'Selamat Datang di Video',
                  style: semiBoldBlackTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString('assets/data/video.json'),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      var newData = json.decode(snapshot.data.toString());
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: newData == null ? 0 : newData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Column(
                              children: [
                                VideoItem(
                                  videoName: newData[index]['title'],
                                  videoUrl: newData[index]['video_url'],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }
                    return Center(
                      heightFactor: 10,
                      child: Container(
                        child: CircularProgressIndicator(
                          color: lightBlueColor,
                          backgroundColor: blueColor,
                          strokeWidth: 5,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

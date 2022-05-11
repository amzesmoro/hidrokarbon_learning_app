import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/theme.dart';
import 'package:hidrokarbon_learning_app/pages/widgets/materi_item.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({Key? key}) : super(key: key);

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
                  'Welcome Students!',
                  style: semiBoldBlackTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString('assets/data/materi.json'),
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
                                MateriItem(
                                  materiNumber: newData[index]['number'],
                                  materiName: newData[index]['title'],
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

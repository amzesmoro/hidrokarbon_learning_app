import 'package:flutter/material.dart';
import 'package:hidrokarbon_learning_app/pages/quiz_geeks/start_quiz_geeks.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final _nameController = TextEditingController();
  final _classNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _classNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang di Kuis',
                  style: semiBoldBlackTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/img_quiz.png',
                        width: 268,
                        height: 188,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            _nameTextField(_nameController),
                            SizedBox(
                              height: 35,
                            ),
                            _classNameTextField(_classNameController),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  onPrimary: blueColor,
                                  primary: blueColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                    MaterialPageRoute(
                                        builder: (context) => StartQuizGeeks(
                                          studentName: _nameController.text,
                                          studentClass: _classNameController.text,
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  'Mulai Kuis',
                                  style: semiBoldWhiteTextStyle.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _nameTextField(controller) {
  return TextFormField(
    controller: controller,
    style: semiBoldBlueTextStyle.copyWith(
      fontSize: 16,
    ),
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Nama',
      labelStyle: boldBlackTextStyle,
      fillColor: blueColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: blackColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: blackColor,
        ),
      ),
    ),
    onChanged: (text) {},
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Nama tidak boleh kosong!';
      }
      return null;
    },
  );
}

Widget _classNameTextField(controller) {
  return TextFormField(
    controller: controller,
    style: semiBoldBlueTextStyle.copyWith(
      fontSize: 16,
    ),
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Kelas',
      labelStyle: boldBlackTextStyle,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: blackColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: blackColor,
        ),
      ),
    ),
    onChanged: (text) {},
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Kelas tidak boleh kosong!';
      }
      return null;
    },
  );
}

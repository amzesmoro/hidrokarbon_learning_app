import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hidrokarbon_learning_app/pages/menu/daftar_pustaka_page.dart';
import 'package:hidrokarbon_learning_app/pages/menu/homemenu_page.dart';
import 'package:hidrokarbon_learning_app/pages/menu/indikator_page.dart';
import 'package:hidrokarbon_learning_app/pages/menu/kompetensi_dasar_page.dart';
import 'package:hidrokarbon_learning_app/pages/menu/peta_konsep_page.dart';
import 'package:hidrokarbon_learning_app/pages/menu/petunjuk_page.dart';
import 'package:hidrokarbon_learning_app/pages/menu/profile_page.dart';
import 'package:hidrokarbon_learning_app/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int body = 0;

  bool _isSoundActive = false;

  void _appBarChange() {
    setState(() {
      _isSoundActive = !_isSoundActive;
    });
  }

  var _audioPath = 'audio/audio_background.mp3';
  AudioCache _audioCache = AudioCache();
  AudioPlayer _audioPlayer = AudioPlayer(
    mode: PlayerMode.LOW_LATENCY,
  );

  void _playAudio() async {
    _audioPlayer = await _audioCache.loop(_audioPath);
  }

  void _pauseAudio() async {
    await _audioPlayer.pause();
  }

  @override
  void dispose() async {
    super.dispose();
    await _audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isSoundActive
          ? _defaultBar(context, _appBarChange, body, _pauseAudio)
          : _changeBar(context, _appBarChange, body, _playAudio),
      body: _getBody(body),
      backgroundColor: whiteColor,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            DrawerHeader(
              child: Text(
                'Hidrokarbon',
                style: boldBlueTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: boldBlackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                setState(() {
                  body = 0;
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Peta Konsep',
                style: boldBlackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                setState(() {
                  body = 1;
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Kompetensi Dasar',
                style: boldBlackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                setState(() {
                  body = 2;
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Indikator',
                style: boldBlackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                setState(() {
                  body = 3;
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Daftar Pustaka',
                style: boldBlackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                setState(() {
                  body = 4;
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Profil',
                style: boldBlackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                setState(() {
                  body = 5;
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Petunjuk',
                style: boldBlackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                setState(() {
                  body = 6;
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

_getBody(int body) {
  switch (body) {
    case 0:
      return HomeMenuPage();
    case 1:
      return PetaKonsepPage();
    case 2:
      return KompetensiDasarPage();
    case 3:
      return IndikatorPage();
    case 4:
      return DaftarPustakaPage();
    case 5:
      return ProfileMenuPage();
    case 6:
      return PetunjukPage();
    default:
      return HomeMenuPage();
  }
}

_getTitle(int body) {
  switch (body) {
    case 0:
      return Text(
        'Hidrokarbon',
        style: boldWhiteTextStyle.copyWith(
          fontSize: 20,
        ),
      );
    case 1:
      return Text(
        'Peta Konsep',
        style: boldWhiteTextStyle.copyWith(
          fontSize: 20,
        ),
      );
    case 2:
      return Text(
        'Kompetensi Dasar',
        style: boldWhiteTextStyle.copyWith(
          fontSize: 20,
        ),
      );
    case 3:
      return Text(
        'Indikator',
        style: boldWhiteTextStyle.copyWith(
          fontSize: 20,
        ),
      );
    case 4:
      return Text(
        'Daftar Pustaka',
        style: boldWhiteTextStyle.copyWith(
          fontSize: 20,
        ),
      );
    case 5:
      return Text(
        'Profil',
        style: boldWhiteTextStyle.copyWith(
          fontSize: 20,
        ),
      );
    case 6:
      return Text(
        'Petunjuk',
        style: boldWhiteTextStyle.copyWith(
          fontSize: 20,
        ),
      );
  }
}

_defaultBar(BuildContext context, Function changeAppBar, body, audio) {
  return AppBar(
    backgroundColor: blueColor,
    title: _getTitle(body),
    actions: [
      IconButton(
        icon: Icon(Icons.volume_up),
        tooltip: 'Sound Off',
        onPressed: () {
          changeAppBar();
          audio();
          Fluttertoast.showToast(
            msg: 'Sound tidak aktif',
          );
        },
      ),
    ],
  );
}

_changeBar(BuildContext context, Function changeAppBar, body, audio) {
  return AppBar(
    backgroundColor: blueColor,
    title: _getTitle(body),
    actions: [
      IconButton(
        icon: Icon(Icons.volume_off),
        tooltip: 'Sound On',
        onPressed: () {
          changeAppBar();
          audio();
          Fluttertoast.showToast(
            msg: 'Sound aktif',
          );
        },
      ),
    ],
  );
}

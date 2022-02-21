import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/Game/gamepage.dart';
import 'package:netflixclone/presentation/comingsoon/CominSoon.dart';
import 'package:netflixclone/presentation/downloads/Downloads.dart';
import 'package:netflixclone/presentation/home/homePage.dart';
import 'package:netflixclone/presentation/laughs/Laughs.dart';
import 'package:netflixclone/presentation/mainpage/widgets/bottomnav.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final pages = [
    HomePage(),
    GamePage(),
    ComingSoonPage(),
    LaughsPage(),
    DownloadsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: IndexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          }),
      bottomNavigationBar: BottomNavWidget(),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.shuffle,color: Color.fromARGB(255, 206, 2, 2),) ,
    backgroundColor: Colors.white,
        onPressed: () {
        
      },),
    );
  }
}

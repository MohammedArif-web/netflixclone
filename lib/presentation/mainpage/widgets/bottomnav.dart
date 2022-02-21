import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';

ValueNotifier<int> IndexChangeNotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: IndexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              iconSize: 20,
              elevation: 28,
              selectedFontSize: 11,
              unselectedFontSize: 11,
              backgroundColor: Color.fromARGB(255, 7, 7, 7),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color.fromARGB(180, 255, 255, 255),
              unselectedItemColor: Color.fromARGB(255, 55, 54, 54),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Icon(Icons.home_outlined),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Icon(Elusive.home),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Icon(Icons.games),
                  ),
                  label: 'Games',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Icon(Icons.video_collection_outlined),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Icon(Icons.video_collection_rounded),
                  ),
                  label: 'Coming soon',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Icon(
                      Icons.emoji_emotions_outlined,
                    ),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Icon(Icons.emoji_emotions_rounded),
                  ),
                  label: 'Fast laughs',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Icon(Icons.download_for_offline_outlined),
                  ),
                  activeIcon: Padding(
                    padding: EdgeInsets.only(bottom: 3.0),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 3.0),
                      child: Icon(
                        Icons.download_for_offline_rounded,
                      ),
                    ),
                  ),
                  label: 'Downloads',
                ),
              ],
              currentIndex: newIndex,
              onTap: (index) {
                IndexChangeNotifier.value = index;
              });
        });
  }
}

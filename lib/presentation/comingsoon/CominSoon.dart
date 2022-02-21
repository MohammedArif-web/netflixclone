import 'package:flutter/material.dart';
import 'package:netflixclone/modal/modal.dart';
import 'package:netflixclone/presentation/comingsoon/widget/videocard.dart';
import 'package:netflixclone/presentation/widgets/appbarWidget.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              child: AppBarWidget(title: 'Coming Soon'),
              preferredSize: const Size.fromHeight(80)),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                leading: Icon(Icons.notifications_none_outlined,
                    size: 30, color: Colors.white),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              VideoCard(category: [
                "horror",
                "Thriller",
              ], size: 2)
              // VideoCard(),
              // VideoCard()
            ],
          )),
    );
  }
}

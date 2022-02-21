import 'package:flutter/material.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:netflixclone/presentation/home/widgets/Latest.dart';
import 'package:netflixclone/presentation/home/widgets/category.dart';
import 'package:netflixclone/presentation/home/widgets/Popular.dart';
import 'package:netflixclone/presentation/home/widgets/topten.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      background: AppBar(
                        backgroundColor: Colors.transparent,
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Netflix_2015_N_logo.svg/1200px-Netflix_2015_N_logo.svg.png',
                              width: 50,
                              height: 70,
                            ),
                          ),
                        ),
                        actions: [
                          Icon(
                            Icons.search,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                              "lib/assets/images/avatar.png",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverAppBar(
                    floating: false,
                    pinned: true,
                    snap: false,
                    backgroundColor: Colors.transparent,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PinnedTop(type: "Tv Shows"),
                        PinnedTop(type: "Movies"),
                        Wrap(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Category()));
                              },
                              child: Text(
                                "Category",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 15),
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white54,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ];
              },
              body: ListView(
                children: [
                  Stack(
                    children: [
                      Image.network(
                        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/squid-game-poster-main-1632506290.jpeg",
                        height: 400,
                        width: double.infinity,
                      ),
                      Positioned(
                          top: 240,
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      'My List',
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 10),
                                    ),
                                  ],
                                ),
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white),
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.play_arrow,
                                      color: Colors.black,
                                    ),
                                    label: Text(
                                      'Play',
                                      style: TextStyle(color: Colors.black),
                                    )),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      'Info',
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 10),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            height: 160,
                            width: 365,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(202, 0, 0, 0),
                                  Colors.transparent
                                ],
                                begin: FractionalOffset.bottomCenter,
                                end: FractionalOffset.topCenter,
                              ),
                            ),
                          ))
                    ],
                  ),
                  Popular(title: "Popular on Netflix"),
                  TopTen(),
                  Latest(title: "Latest"),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ));
      },
    );
  }
}

class PinnedTop extends StatelessWidget {
  const PinnedTop({
    Key? key,
    required this.type,
  }) : super(key: key);
  final dynamic type;
  @override
  Widget build(BuildContext context) {
    return Text(
      type,
      style: TextStyle(color: Colors.white54, fontSize: 15),
    );
  }
}

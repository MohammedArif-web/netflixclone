import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/Core/colors/colors.dart';
import 'package:netflixclone/modal/modal.dart';

class VideoCard extends StatelessWidget {
  VideoCard({Key? key, required this.category, required this.size});
  List<String> category = [];
  final int size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: FutureBuilder(
        future: getUpComing(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(child: CircularProgressIndicator());
          }
          List upComing = snapshot.data as List;

          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: upComing.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'http://image.tmdb.org/t/p/w500' +
                                        upComing[index]['backdrop_path']))),
                        height: 210,
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          Column(
                            children: const [
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Remind Me',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: const [
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.info_outline,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                "Info",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 17,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Coming on ",
                            style: TextStyle(
                                fontSize: 12.5, color: Colors.white70),
                          ),
                          Text(
                            upcoming[index]['release_date'],
                            style: TextStyle(
                                fontSize: 12.5, color: Colors.white70),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            upcoming[index]['title'],
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        upcoming[index]['overview'],
                        style: TextStyle(fontSize: 12.5, color: Colors.white70),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      getTextWidgets(category, size),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  );
                });
          }
          return Container();
        },
      ),
    );
  }
}

Widget getTextWidgets(List<String> strings, size) {
  List<Widget> list = <Widget>[];
  for (var i = 0; i < strings.length; i++) {
    list.add(
      Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Row(
          children: [
            Icon(
              Icons.circle,
              color: Colors.grey.shade800,
              size: 5,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              strings[i],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
  return Row(children: list);
}

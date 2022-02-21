import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/modal/modal.dart';

class TopTen extends StatelessWidget {
  const TopTen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Top 10 in India Today",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
              width: 14,
            ),
            itemBuilder: (context, index) => Stack(
              children: [
                FutureBuilder(
                  future: getPopular(),
                  builder: ((context, snapshot) {
                    if (snapshot.hasData) {
                      List topTen = snapshot.data as List;
                      return Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'http://image.tmdb.org/t/p/w500' +
                                        topTen[index]['poster_path'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.limeAccent),
                            width: 130,
                          ),
                          Positioned(
                            top: 120,
                            right: 95,
                            child: BorderedText(
                                strokeWidth: 3.0,
                                strokeColor: Colors.white,
                                child: Text(
                                  "${index + 1}",
                                  style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromARGB(255, 14, 14, 14),
                                  ),
                                )),
                          )
                        ],
                      );
                    }
                    return Container();
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflixclone/modal/modal.dart';

class Latest extends StatelessWidget {
  const Latest({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: FutureBuilder(
            future: getLatest(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List toRev = snapshot.data as List;
                List popular = toRev.reversed.toList();
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 8,
                  ),
                  itemCount: popular.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'http://image.tmdb.org/t/p/w500' +
                                popular[index]['poster_path'],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.limeAccent),
                    width: 145,
                  ),
                );
              }
              return Container();
            },
          ),
        ),
      ],
    );
  }
}

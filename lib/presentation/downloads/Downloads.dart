import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/widgets/appbarWidget.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              child: AppBarWidget(title: 'Downloads'),
              preferredSize: const Size.fromHeight(80)),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                leading: Icon(Icons.settings, color: Colors.white70),
                title: Text(
                  'Smart Downloads',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const ListTile(
                title: Text(
                  'Introducing Downloads for You',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "We'll download a personalised selection of movies and shows for you, so there's always something to watch on your phone.",
                    style: TextStyle(
                        color: Colors.white70, height: 1.3, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    maxRadius: 140,
                  ),
                  Center(
                    child: RotationTransition(
                      turns: new AlwaysStoppedAnimation(-18 / 360),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://occ-0-4825-2164.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABRwmlHXMCh8oRShqvXDzu2IugERvY23YudDNdhe6REK3TU9BJyTq64okqiaIYaUcCmnH8mWN6KY4gCVZ_WLAghiAfvGG.jpg?r=b2e"),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        margin: EdgeInsets.only(right: 160),
                        height: 190,
                        width: 145,
                      ),
                    ),
                  ),
                  Center(
                    child: RotationTransition(
                      turns: new AlwaysStoppedAnimation(18 / 360),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://occ-0-4825-2164.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABXNNSS5EYFkqXFIfOTzkhl40o_sCBOG_F_LyyrMwbAnlOJIhenOG24Fu0Owq1AN9umJApWT5jwRBguieTg_0UtcYLW2M.jpg?r=879"),
                              fit: BoxFit.cover,
                            ),
                            color: Color.fromARGB(255, 224, 248, 3),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        margin: EdgeInsets.only(left: 160),
                        height: 190,
                        width: 145,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5s749GAeB0ZO07rWAWMV4jcOxEVDoNzCEZQ&usqp=CAU"),
                            fit: BoxFit.cover,
                          ),
                          color: Color.fromARGB(255, 197, 13, 176),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      height: 220,
                      width: 170,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, right: 23, top: 23),
                child: ElevatedButton(onPressed: () {}, child: Text("Set Up")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 23),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Find More to Download",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade700,
                  ),
                ),
              )
            ],
          )),
    );
  }
}

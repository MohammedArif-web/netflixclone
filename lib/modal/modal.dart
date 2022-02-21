import 'package:http/http.dart' as http;
import 'dart:convert';

List latest = [];

List popular = [];
List toprated = [];
List upcoming = [];

final latestUrl = Uri.parse(
    'https://api.themoviedb.org/3/movie/now_playing?api_key=a670bf6869db9a64c39ee9c7b366353d');

final popularUrl = Uri.parse(
    'https://api.themoviedb.org/3/movie/popular?api_key=a670bf6869db9a64c39ee9c7b366353d');

final upComingUrl = Uri.parse(
    'https://api.themoviedb.org/3/movie/upcoming?api_key=a670bf6869db9a64c39ee9c7b366353d');

final topRatedUrl = Uri.parse(
    'https://api.themoviedb.org/3/movie/top_rated?api_key=a670bf6869db9a64c39ee9c7b366353d');

getLatest() async {
  final response = await http.get(latestUrl);
  Map data = json.decode(response.body);
  latest = data['results'];
  return latest;
}

getPopular() async {
  final response = await http.get(popularUrl);
  Map data = json.decode(response.body);
  popular = data['results'];
  return popular;
}

getUpComing() async {
  final response = await http.get(upComingUrl);
  Map data = json.decode(response.body);
  upcoming = data['results'];
  return upcoming;
}

getTopRated() async {
  final response = await http.get(topRatedUrl);
  Map data = json.decode(response.body);
  toprated = data['results'];
  return toprated;
}

List categories = [
  "Home",
  "My List",
  "Marvel",
  "DC",
  "Action",
  "Triller",
  "Horror",
  "Advenjure",
  "Bollywood",
  "Hollywood",
  "Malayalam",
  "Web Series",
];

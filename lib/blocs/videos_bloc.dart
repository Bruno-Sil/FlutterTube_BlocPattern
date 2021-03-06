import 'package:fluttertube/api.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fluttertube/models/video.dart';
import 'dart:async';

abstract class VideosBloc implements BlocBase {

Api api;

List<Video> videos;

final StreamController _videosController = StreamController();
Stream get outVideos => _videosController.stream;

final StreamController _searchController = StreamController();
Sink get inSearch => _searchController.sink;

VideosBloc(){
  api = Api();
  _searchController.stream.listen(_search);

}

void _search(String search) async {
  videos = await api.search(search);
}

@override 
void dispose() {
  _videosController.close();
  _searchController.close();
}

}
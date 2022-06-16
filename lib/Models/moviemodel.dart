import 'package:flutter/foundation.dart';
import 'package:marvel_app/Services/apiservice.dart';

class MovieModel { 
  List<MovieData>? data;
  int? total;

  MovieModel({this.data, this.total});

  MovieModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <MovieData>[];
      json['data'].forEach((v) {
        data!.add(new MovieData.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}

class MovieData {
  int? id;
  String? title;
  String? releaseDate;
  String? boxOffice;
  int? duration;
  String? overview;
  String? coverUrl;
  String? trailerUrl;
  String? directedBy;
  int? phase;
  String? saga;
  int? chronology;
  int? postCreditScenes;
  String? imdbId;

  MovieData(
      {this.id,
      this.title,
      this.releaseDate,
      this.boxOffice,
      this.duration,
      this.overview,
      this.coverUrl,
      this.trailerUrl,
      this.directedBy,
      this.phase,
      this.saga,
      this.chronology,
      this.postCreditScenes,
      this.imdbId});

  MovieData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    releaseDate = json['release_date'];
    boxOffice = json['box_office'];
    duration = json['duration'];
    overview = json['overview'];
    coverUrl = json['cover_url'];
    trailerUrl = json['trailer_url'];
    directedBy = json['directed_by'];
    phase = json['phase'];
    saga = json['saga'];
    chronology = json['chronology'];
    postCreditScenes = json['post_credit_scenes'];
    imdbId = json['imdb_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['release_date'] = this.releaseDate;
    data['box_office'] = this.boxOffice;
    data['duration'] = this.duration;
    data['overview'] = this.overview;
    data['cover_url'] = this.coverUrl;
    data['trailer_url'] = this.trailerUrl;
    data['directed_by'] = this.directedBy;
    data['phase'] = this.phase;
    data['saga'] = this.saga;
    data['chronology'] = this.chronology;
    data['post_credit_scenes'] = this.postCreditScenes;
    data['imdb_id'] = this.imdbId;
    return data;
  }
}

class MovieManager extends ChangeNotifier{

  List<MovieData> _movieList = [];
  int _selectedMovie =0;

  //MovieData _selectedMovies = MovieData();
  //MovieData get selectedMovie => _selectedMovies;
  int get selectedMovie => _selectedMovie;

  List<MovieData> get movieList => List.unmodifiable(_movieList);

  void getMovieData() async {
    _movieList =  await ApiService.getMarvelData();
    print(_movieList.length);
    notifyListeners();
  }

  // MovieData getMovieFromId(id){
  //   _selectedMovie = _movieList.where((element) => element.id == id).first;

  //   notifyListeners();
  //   return _selectedMovie;
  // }

  void setSelectIndex(int index){
      _selectedMovie = index;

      notifyListeners();
      //return _selectedMovie;
    }


}




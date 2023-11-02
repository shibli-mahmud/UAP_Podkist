import 'package:spotify/data/artist_model.dart';
import 'package:spotify/data/podcast_model.dart';
import 'package:spotify/data/song_model.dart';
import 'package:spotify/data/top_mix_model.dart';
import 'package:spotify/data/tophit_model.dart';

class Data {
  List<SongModel> songs = [
    SongModel(
        id: 1,
        title: 'Artificial Intelligence',
        description: 'Original Soundtrack',
        artist: 'Junnatul Mawa',
        image:
            'assets/images/course1.jpg',
        type: 'album',
        src: 'https://freesound.org/data/previews/612/612095_5674468-lq.mp3'),
    SongModel(
        id: 2,
        title: 'Python with Django',
        artist: 'D M Hasibul Islam',
        description: 'Relax and indulge with beautiful piano pieces',
        image:
            'assets/images/course2.jpg',
        type: 'album',
        src: 'https://freesound.org/data/previews/612/612092_7037-lq.mp3'),
    SongModel(
        id: 3,
        title: 'Machine Learning',
        artist: 'Shanjid Pranto',
        description: 'Artist',
        image:
            'assets/images/course3.jpg',
        type: 'artist',
        src: 'https://freesound.org/data/previews/612/612087_1648170-lq.mp3'),
    SongModel(
        id: 4,
        title: 'Number Theory',
        artist: 'Antim Biswas',
        description: 'Original Soundtrack',
        image:
            'assets/images/course4.jpg',
        type: 'podcast',
        src: 'https://freesound.org/data/previews/612/612085_28867-lq.mp3'),
    // SongModel(
    //     id: 5,
    //     title: 'Intouchables',
    //     artist: 'Mehmet Abi',
    //     description: 'Original Soundtrack',
    //     image:
    //         'https://i.scdn.co/image/ab67706c0000da84fcb8b92f2615d3261b8eb146',
    //     type: 'album',
    //     src: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3')
  ];

  List<ArtistModel> artists = [
    ArtistModel(
      image: 'assets/images/pranto.png',
      name: 'Shanjid Pranto',
    ),
    ArtistModel(
      image: 'assets/images/hasib.png',
      name: 'D M Hasibul Islam',
    ),
    ArtistModel(
      image: 'assets/images/mawa.png',
      name: 'Junnatul Mawa',
    ),
  ];

  List<TopMixModel> topmixs = [
    TopMixModel(
      title: "CSE 401",
      description: "Juice Wrld, Drake, Kendrick lamar and more... ",
      image: "assets/images/course.png",
      color: "#EF0CAF",
    ),
    TopMixModel(
      title: "CSE 407",
      description: "Joji, The Kid LAROI, Tate McRae and more...",
      image: "assets/images/course.png",
      color: "#FFFF00",
    ),
    TopMixModel(
      title: "CSE 409",
      description: "Martin Garrix, The Chainsmoker and more...",
      image: "assets/images/course.png",
      color: "#1ED760",
    ),
  ];
  List<PodCastModel> podcasts = [
    PodCastModel(
      title: "Machine learning",
      description: "334 ep.",
      image: "assets/images/impaulsive.png",
    ),
    PodCastModel(
      title: "Artificial Intelligence",
      description: "155 ep.",
      image: "assets/images/tedTalk.png",
    ),
    PodCastModel(
      title: "Number theory",
      description: "75 ep.",
      image: "assets/images/momsBasement.png",
    ),
  ];
  List<TopHitModel> tophits = [
    TopHitModel(
      image: 'assets/images/popular1.jpg',
      title: 'Operating Systems',
      description: 'The Kid LAROI, Justin Bieber',
    ),
    TopHitModel(
      image: 'assets/images/popular1.jpg',
      title: 'Microprocessor',
      description: 'Juice WLRD',
    ),
    TopHitModel(
      image: 'assets/images/popular1.jpg',
      title: 'System Analysis',
      description: 'Jack Harlow',
    ),
    TopHitModel(
      image: 'assets/images/popular1.jpg',
      title: 'DLSD',
      description: 'Justin Bieber, The Kid LAROI',
    ),
    TopHitModel(
      image: 'assets/images/popular1.jpg',
      title: 'DBMS',
      description: 'Justin Bieber, The Kid LAROI',
    ),
  ];
}

import 'package:hacknight_example/movie_catalog/models.dart';

// -----
// Movies
// -----

final inception = Movie(
  title: "Inception",
  description:
      "Inception is a 2010 science fiction action film[3] written, co-produced, and directed by Christopher Nolan, and co-produced by Emma Thomas. The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious, and is offered a chance to have his criminal history erased as payment for the implantation of another person's idea into a target's subconscious.[4] The ensemble cast additionally includes Ken Watanabe, Joseph Gordon-Levitt, Marion Cotillard, Ellen Page, Tom Hardy, Dileep Rao, Cillian Murphy, Tom Berenger, and Michael Caine.",
  releaseDate: DateTime(2010, 6, 11),
  imageUrl:
      "https://en.wikipedia.org/wiki/File:Inception_(2010)_theatrical_poster.jpg",
  trailerUrl: "https://www.youtube.com/watch?v=8hP9D6kZseM",
  actors: [leonardoDiCaprio, kenWatanabe, josephGordonLevitt],
  reviews: [reviewSebi, reviewStefan, reviewMalte, reviewKlaus],
);

final menInBlack = Movie(
  title: "Men in Black: International",
  description:
      "Men in Black: International (stylized as MIB: International in promotional material) is a 2019 American science fiction action comedy film directed by F. Gary Gray and written by Art Marcum and Matt Holloway. It is a spin-off of the Men in Black film series, which is loosely based on the Malibu/Marvel comics of the same name by Lowell Cunningham. The film stars Chris Hemsworth, Tessa Thompson, Kumail Nanjiani, Rebecca Ferguson, Rafe Spall, Laurent and Larry Bourgeois, and Liam Neeson. Emma Thompson reprises her role from the third film, while Tim Blaney returns to voice Frank the Pug from the first two installments.",
  releaseDate: DateTime(2019, 5, 17),
  imageUrl:
      "https://en.wikipedia.org/wiki/File:Men_in_Black_International_(Official_Film_Poster).png",
  trailerUrl: "https://www.youtube.com/watch?v=BV-WEb2oxLk",
  actors: [chrisHemsworth, tessaThompson, rebeccaFerguson],
  reviews: [reviewNasir, reviewJulian, reviewNiko, reviewKlaus],
);

final mockedMovies = <Movie>[inception, menInBlack];

// -----
// Actors
// -----

final leonardoDiCaprio = Actor(
  name: "Leonardo DiCaprio",
  imageUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Leonardo_DiCaprio_visited_Goddard_Saturday_to_discuss_Earth_science_with_Piers_Sellers_%2826105091624%29_cropped.jpg/440px-Leonardo_DiCaprio_visited_Goddard_Saturday_to_discuss_Earth_science_with_Piers_Sellers_%2826105091624%29_cropped.jpg",
);

final kenWatanabe = Actor(
  name: "Ken Watanabe",
  imageUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Ken_Watanabe_2007_%28cropped%29.jpg/400px-Ken_Watanabe_2007_%28cropped%29.jpg",
);

final josephGordonLevitt = Actor(
  name: "Joseph Gordon-Levitt",
  imageUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Joseph_Gordon-Levitt_2013.jpg/440px-Joseph_Gordon-Levitt_2013.jpg",
);

final chrisHemsworth = Actor(
  name: "Chris Hemsworth",
  imageUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Chris_Hemsworth_by_Gage_Skidmore.jpg/440px-Chris_Hemsworth_by_Gage_Skidmore.jpg",
);

final tessaThompson = Actor(
  name: "Tessa Thompson",
  imageUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Tessa_Thompson_by_Gage_Skidmore_2.jpg/440px-Tessa_Thompson_by_Gage_Skidmore_2.jpg",
);

final rebeccaFerguson = Actor(
  name: "Rebecca Ferguson",
  imageUrl:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Rebecca_Ferguson_in_2018.jpg/440px-Rebecca_Ferguson_in_2018.jpg",
);

// -----
// Users
// -----

final malte = User(
  name: "Malte",
  profilePictureUrl:
      "https://quickbirdmedical.com/wp-content/uploads/2019/04/Malte_Buksch_45189_bearbeitet_blurry.jpg",
);

final stefan = User(
  name: "Stefan",
  profilePictureUrl:
      "https://quickbirdmedical.com/wp-content/uploads/2019/04/Stefan_Kofler_45312_bearbeitet_blurry.jpg",
);

final sebi = User(
  name: "Sebi",
  profilePictureUrl:
      "https://quickbirdmedical.com/wp-content/uploads/2019/04/Sebastian_Sellmair_45692_bearbeitet_blurry-1.jpg",
);

final nasir = User(
  name: "Nasir",
  profilePictureUrl:
      "https://quickbirdmedical.com/wp-content/uploads/2019/04/Ghulam_Nasir_45794_bearbeitet_blurry.jpg",
);

final niko = User(
  name: "Niko",
  profilePictureUrl:
      "https://quickbirdmedical.com/wp-content/uploads/2019/04/Nico_Tzioras_45910_bearbeitet_blurry.jpg",
);

final julian = User(
  name: "Julian",
  profilePictureUrl:
      "https://quickbirdmedical.com/wp-content/uploads/2019/04/Julian_Bissekko_45461_bearbeitet_blurry.jpg",
);

final klaus = User(
  name: "Klaus",
  profilePictureUrl:
      "https://quickbirdmedical.com/wp-content/uploads/2019/04/Klaus_Niedermair_45542_bearbeitet_blurry.jpg",
);

// -----
// Reviews
// -----

final reviewMalte = Review(
  author: malte,
  score: 0.8,
  description: "Doesn't add any value",
);

final reviewStefan =
    Review(author: stefan, score: 4.2, description: "Would recommend");

final reviewSebi = Review(
  author: sebi,
  score: 5,
  description: "Watched with a hoibe mass 🍺, after that, best movie ever! ",
);

final reviewNasir = Review(
  author: nasir,
  score: 0.1,
  description:
      "The movie was in german! Cmon! Subtitles are there for a reason!",
);

final reviewNiko = Review(
  author: niko,
  score: 3.5,
  description: "It's okay for a trash movie.",
);

final reviewJulian = Review(
  author: julian,
  score: 5.0,
  description: "LGTM",
);

final reviewKlaus = Review(
  author: julian,
  score: 2.2,
  description: "Didn't enjoyed it.",
);

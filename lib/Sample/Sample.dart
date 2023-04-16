import '../Models/Post.dart';
import '../Models/User.dart';
import '../icons.dart';

class Sample {
  static User mohammad = User(
    name: "Hack2Impact",
    username: "@Hack2Impact",
    followers: 400,
    following: 190,
    profilePicture: "assets/users/mohammad.jpg",
  );

  static User yasir = User(
    name: "Talk Game",
    username: "@yasirnoori.yn",
    followers: 400,
    following: 190,
    profilePicture: "assets/users/yasir.jpg",
  );

  static Post postOne = Post(
    subtitle: "A 24 hour Hackaton sponsored by Huwaei",
    EventName: "Hack2Impact",
    description:
        "Hack2Impact is a competition aimed at building and encouraging a community of not only software-passionate, but also solution-driven AUIers.",
    guildlines:
        "Take a picture from within the event! Most liked picture get extra points ;)",
    following: 40,
    ChallengeType: AssetName.camera,
    Points: 25,
    user: mohammad,
    location: "Building 7",
    deadline: "3 hours",
    photos: [],
    relatedPhotos: [
      'assets/pics/ORG_GROUP_PIC7.jpeg',
      'assets/pics/PIC08537.JPG',
      'assets/pics/PIC08539.JPG',
      'assets/pics/PIC08651.JPG',
    ],
    likesPhoto: [10, 30, 12, 23],
    likestatuts: [false, false, false, false],
  );

  static Post postTwo = Post(
    subtitle: "A ftour animated with music and games",
    EventName: "The AFTER FTOUR",
    description:
        "The Student Activities Office and the Rhythm Unity Club are pleased to invite you to the first and biggest event of the semester",
    guildlines: "Take a picture of the music band.",
    following: 10,
    ChallengeType: AssetName.camera,
    Points: 10,
    user: mohammad,
    location: "Auditorium 17",
    deadline: "6 hours",
    photos: [],
    relatedPhotos: [
      'assets/pics/ORG_GROUP_PIC7.jpeg',
      'assets/pics/PIC08537.JPG',
      'assets/pics/PIC08539.JPG',
      'assets/pics/PIC08651.JPG',
    ],
    likesPhoto: [10, 30, 12, 23],
    likestatuts: [false, false, false, false],
  );

  static Post post3 = Post(
    subtitle: "Let's go watch John Wick chapter 4 in megarma",
    EventName: "CineMacdo",
    description:
        "John Wick, Chaper 4 which was released in the US on March 24, 2023 is finally available in Megarama Fez 😍",
    guildlines: "Take a picture of Megarama",
    following: 20,
    ChallengeType: AssetName.camera,
    Points: 20,
    user: mohammad,
    location: "Bus Shelter",
    deadline: "10 hours",
    photos: [],
    relatedPhotos: [
      'assets/pics/ORG_GROUP_PIC7.jpeg',
      'assets/pics/PIC08537.JPG',
      'assets/pics/PIC08539.JPG',
      'assets/pics/PIC08651.JPG',
    ],
    likesPhoto: [10, 30, 12, 23],
    likestatuts: [false, false, false, false],
  );
  static Post post4 = Post(
    subtitle: "sampletext",
    EventName: "Morocco vs Peru",
    description:
        "We have some exciting news to share! Morocco is taking on Peru in a friendly match tonight📺⚽",
    guildlines: "blablajeklwfje",
    following: 50,
    ChallengeType: AssetName.camera,
    Points: 10,
    user: mohammad,
    location: "Auditorium 17",
    deadline: "6 hours",
    photos: [],
    relatedPhotos: [
      'assets/pics/ORG_GROUP_PIC7.jpeg',
      'assets/pics/PIC08537.JPG',
      'assets/pics/PIC08539.JPG',
      'assets/pics/PIC08651.JPG',
    ],
    likesPhoto: [10, 30, 12, 23],
    likestatuts: [false, false, false, false],
  );

  static Post post5 = Post(
    subtitle: "sampletext",
    EventName: "Quran Exhibit",
    description:
        "The exhibit features a manuscript of the Quran, early print copies of the text, and printed translations of the Quran. ",
    guildlines: "blablajeklwfje",
    following: 50,
    ChallengeType: AssetName.camera,
    Points: 10,
    user: mohammad,
    location: "Building 7",
    deadline: "3 hours",
    photos: [],
    relatedPhotos: [
      'assets/pics/ORG_GROUP_PIC7.jpeg',
      'assets/pics/PIC08537.JPG',
      'assets/pics/PIC08539.JPG',
      'assets/pics/PIC08651.JPG',
    ],
    likesPhoto: [10, 30, 12, 23],
    likestatuts: [false, false, false, false],
  );

  static Post post7 = Post(
    subtitle: "sampletext",
    EventName: "Hack2Impact",
    description: "event description",
    guildlines: "blablajeklwfje",
    following: 50,
    ChallengeType: AssetName.camera,
    Points: 10,
    user: mohammad,
    location: "Building 7",
    deadline: "3 hours",
    photos: [],
    relatedPhotos: [
      'assets/pics/ORG_GROUP_PIC7.jpeg',
      'assets/pics/PIC08537.JPG',
      'assets/pics/PIC08539.JPG',
      'assets/pics/PIC08651.JPG',
    ],
    likesPhoto: [10, 30, 12, 23],
    likestatuts: [false, false, false, false],
  );

  static Post post8 = Post(
    subtitle: "sampletext",
    EventName: "Hack2Impact",
    description: "event description",
    guildlines: "blablajeklwfje",
    following: 50,
    ChallengeType: AssetName.camera,
    Points: 10,
    user: mohammad,
    location: "Building 7",
    deadline: "3 hours",
    photos: [],
    relatedPhotos: [
      'assets/pics/ORG_GROUP_PIC7.jpeg',
      'assets/pics/PIC08537.JPG',
      'assets/pics/PIC08539.JPG',
      'assets/pics/PIC08651.JPG',
    ],
    likesPhoto: [10, 30, 12, 23],
    likestatuts: [false, false, false, false],
  );

  static Post post9 = Post(
    subtitle: "sampletext",
    EventName: "Hack2Impact",
    description: "event description",
    guildlines: "blablajeklwfje",
    following: 50,
    ChallengeType: AssetName.camera,
    Points: 10,
    user: mohammad,
    location: "Building 7",
    deadline: "3 hours",
    photos: [],
    relatedPhotos: [
      'assets/pics/ORG_GROUP_PIC7.jpeg',
      'assets/pics/PIC08537.JPG',
      'assets/pics/PIC08539.JPG',
      'assets/pics/PIC08651.JPG',
    ],
    likesPhoto: [10, 30, 12, 23],
    likestatuts: [false, false, false, false],
  );
}

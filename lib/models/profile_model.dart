import 'package:fitness_time/models/activity_model.dart';

class ProfileModel {
  String name;
  String surname;
  String profileImage;
  double height;
  double weight;
  String registered;

  // les variables totalTime, totalKm, totalActivities per anar be haurien de venir de camps calculats a partir de la llista d'activitats, pero per l'exemple els donc un valor forçat
  String totalTime;
  String totalKm;
  String totalActivities;

  List<ActivityModel> activities;

  ProfileModel({
    required this.name,
    required this.surname,
    required this.profileImage,
    required this.height,
    required this.weight,
    required this.totalTime,
    required this.totalKm,
    required this.totalActivities,
    required this.registered,
    this.activities = const [],
  });
}

List<ActivityModel> antoniaActivities = [
  ActivityModel(
    activitat: "Running",
    data: DateTime(2024, 9, 20, 18, 20),
    distancia: "7,300 km",
  ),
  ActivityModel(
    activitat: "Running",
    data: DateTime(2024, 9, 15, 21, 45),
    distancia: "6,550 km",
  ),
  ActivityModel(
    activitat: "Running",
    data: DateTime(2024, 9, 10, 21, 33),
    distancia: "7,100 km",
  ),
];

ProfileModel profile = ProfileModel(
    name: "Antonia",
    surname: "Font",
    profileImage: "https://randomuser.me/api/portraits/women/44.jpg",
    activities: antoniaActivities,
    height: 150,
    weight: 55,
    totalTime: "2h 45'",
    totalKm: '212,4',
    totalActivities: '42',
    registered: "20 d'abril del 2022");

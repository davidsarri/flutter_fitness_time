import 'package:fitness_time/controladors/date_controller.dart';
import 'package:fitness_time/models/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Perfil",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Hero(
                tag: "imatgePerfil",
                child: Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(profile.profileImage),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              "${profile.name} ${profile.surname}",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Text(
            DateController.formatRegistrationDate(profile.registered),
            style: TextStyle(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  color: Color(0xffbf63f8),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Icon(Icons.alarm),
                      Text("Time"),
                      Text(
                        profile.totalTime,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  color: Color(0xffbf63f8),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Icon(Icons.place),
                      Text("Km"),
                      Text(
                        profile.totalKm,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  color: Color(0xffbf63f8),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Icon(Icons.house),
                      Text("Activities"),
                      Text(
                        profile.totalActivities,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 75, right: 75, top: 20),
            child: Row(
              children: [
                Text(
                  "Height",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Slider(
                    value: profile.height,
                    min: 0,
                    max: 500,
                    divisions: 200,
                    onChanged: (double value) {},
                    activeColor: Color(0xffbf63f8),
                  ),
                ),
                Text(
                  "${profile.height % 1 == 0 ? profile.height.toInt() : profile.height} cm",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 75, right: 75),
            child: Row(
              children: [
                Text(
                  "Weight",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Slider(
                    value: profile.weight,
                    min: 0,
                    max: 500,
                    divisions: 200,
                    onChanged: (double value) {},
                    activeColor: Color(0xffbf63f8),
                  ),
                ),
                Text(
                  "${profile.weight % 1 == 0 ? profile.weight.toInt() : profile.weight} kg",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

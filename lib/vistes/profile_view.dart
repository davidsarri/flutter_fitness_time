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
                    backgroundImage: NetworkImage(
                        "https://randomuser.me/api/portraits/women/44.jpg"),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              "Antònia Font",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Text(
            "des del 20 d'abril del 2022",
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
                        "2h 45'",
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
                        "212,4",
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
                        "42",
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
            padding: const EdgeInsets.only(left: 75, right: 75),
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
                    value: 150,
                    min: 0,
                    max: 500,
                    divisions: 200,
                    onChanged: (double value) {},
                    activeColor: Colors.deepPurple,
                    inactiveColor: Colors.deepPurple.shade100,
                  ),
                ),
                Text(
                  "150cm",
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
                    value: 150,
                    min: 0,
                    max: 500,
                    divisions: 200,
                    onChanged: (double value) {},
                    activeColor: Colors.deepPurple,
                    inactiveColor: Colors.deepPurple.shade100,
                  ),
                ),
                Text(
                  "55 kg",
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

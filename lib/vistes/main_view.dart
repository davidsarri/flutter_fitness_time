import 'package:fitness_time/models/profile_model.dart';
import 'package:fitness_time/vistes/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Fitness Time"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileView(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: "imatgePerfil",
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(profile.profileImage),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 16),
            child: Text(
              "Hola ${profile.name},",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12, right: 8),
            child: Text(
              "Recorda beure aigua regularment al llarg del dia per mantenir el teu cos hidratat i millorar el teu rendiment físic i mental",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Més detalls",
                style: TextStyle(
                  color: Color(0xff3407da),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12, right: 8),
            child: Text(
              "Darreres activitats",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12, right: 8),
            child: Divider(),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: profile.activities.length,
              itemBuilder: (context, index) {
                final activity = profile.activities[index];
                return Card(
                  color: Color(0xfff7f2fa),
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.run_circle_outlined,
                          size: 42,
                          color: Color(0xffbf63f8),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              activity.activitat,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              activity.data,
                              style: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          activity.distancia,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Center(
            child: Column(
              children: [
                CircularPercentIndicator(
                  radius: 60,
                  lineWidth: 10.0,
                  percent: 0.65,
                  center: Text(
                    "65%",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  progressColor: Color(0xff3407da),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
                SizedBox(height: 10), // Espai entre el indicador i el text
                Text(
                  "Objectiu mensual",
                  style: TextStyle(fontSize: 14, color: Color(0xff3407da)),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inici",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Cercar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Botiga",
          ),
        ],
      ),
    );
  }
}

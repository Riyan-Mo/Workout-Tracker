import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:workout_tracker/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 100.0),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Lottie.asset("assets/lotties/workout.json"),
                SizedBox(height: 150.0),
                Text(
                  "Track all your workouts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.tealAccent,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
                  child: Text("Get Started"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

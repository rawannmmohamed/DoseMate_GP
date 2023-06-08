import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Emergency.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';
import 'package:flutter_application_1/screens/DrugList.dart';
import 'package:flutter_application_1/screens/diet_screen.dart';
import 'package:flutter_application_1/screens/SearchScreen.dart';
import 'package:flutter_application_1/screens/SymptomsScreen.dart';
import 'package:flutter_application_1/screens/Lab_Results.dart';

class MenuButton extends StatelessWidget {
  final dynamic icon;
  final String title;
  final Color color;
  final VoidCallback onPressed;
  final bool isSearchButton;

  const MenuButton({
    required this.icon,
    required this.title,
    required this.color,
    required this.onPressed,
    this.isSearchButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: isSearchButton ? BorderRadius.circular(16) : BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(200, 23, 13, 72),
            blurRadius: 11,
            offset: isSearchButton ? Offset(0, 3): Offset(0, 2),
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: isSearchButton ? BorderRadius.circular(16) : BorderRadius.circular(16),
              side: BorderSide(
                color:  isSearchButton ? Colors.blue : Color.fromARGB(255, 23, 13, 72),
                width: 1.0,
              ),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.fromLTRB(12, 0, 16, 0),
          ),
         backgroundColor: MaterialStateProperty.all<Color>(
            isSearchButton ? Colors.white : Color.fromARGB(255, 23, 13, 72),
        ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (icon is IconData)
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(
                  icon,
                  size: isSearchButton ? 42 : 56,
                  color: color,
                ),
              ),
            if (icon is Image)
              Container(
                width: isSearchButton ? 28 : 50,
                height: isSearchButton ? 28 : 100,
                child: icon,
              ),
            SizedBox(width: 5),
            Expanded(
              child: Container(
                constraints: BoxConstraints(
                  minWidth: 0,
                  maxWidth: isSearchButton ? 200 : double.infinity,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: isSearchButton ? 15 : 17,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/DoseMate.png',
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 13, 72),
                borderRadius: BorderRadius.vertical(top: Radius.circular(500)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(CupertinoIcons.profile_circled),
                    color: Color.fromARGB(255, 255, 255, 255),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserProfilePage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(CupertinoIcons.add_circled),
                    color: Color.fromARGB(255, 255, 255, 255),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DiagnosePage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.logout_rounded),
                    color: Color.fromARGB(255, 255, 255, 255),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 80),
                  SingleChildScrollView(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Column(
                      children: [
                        MenuButton(
                          icon: Image.network(
                            'https://th.bing.com/th/id/OIP.G5dJzrEe0JGRjqFCqhOa5QAAAA?pid=ImgDet&rs=1', // Replace with the path to your desired image
                            width: 28,
                            height: 28,
                          ),
                          title: 'Search for drugs',
                          color: Color.fromARGB(255, 86, 183, 221),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SearchScreen()),
                            );
                          },
                          isSearchButton: true,
                        ),
                        SizedBox(height: 50), // Adjust the height as desired
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            'Welcome back !',
                            
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 86, 183, 221),
                              height: 3,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            'How are you feeling today ? :)',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 31, 18, 97),
                            ),
                          ),
                        ),
                        SizedBox(height: 60), // Adjust the height as desired
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: MenuButton(
                                icon: Image.network(
                                  'https://www.careplace.com/images/prescription.png',
                                  width: 28,
                                  height: 28,
                                ),
                                title: 'Drug List',
                                color: Color.fromARGB(255, 255, 255, 255),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => DrugList()),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 14),
                            Expanded(
                              child: MenuButton(
                                icon: Image.network(
                                  'https://ticketrestaurant.us/wp-content/uploads/2020/06/DiningChoices.png',
                                  width: 28,
                                  height: 28,
                                ),
                                title: 'Diet',
                                color: Color.fromARGB(255, 255, 255, 255),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Diet()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: MenuButton(
                                icon: Image.network(
                                  'https://cdn2.iconfinder.com/data/icons/medical-specialties-set-3/256/Emergency_Medicine-512.png',
                                  width: 28,
                                  height: 28,
                                ),
                                title: 'Emergency',
                                color: Color.fromARGB(255, 255, 255, 255),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Emergency()),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 14),
                            Expanded(
                              child: MenuButton(
                                icon: Image.network(
                                  'https://www.coatresa.com/wp-content/uploads/2018/06/recubrimientos-anticorrosivos-industria-quimica-petroquimica--230x230.png',
                                  width: 28,
                                  height: 28,
                                ),
                                title: 'Lab Results',
                                color: Color.fromARGB(255, 255, 255, 255),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LabResultsScreen()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}







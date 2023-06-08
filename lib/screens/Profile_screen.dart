import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _weightController = TextEditingController();
  final _medicationController = TextEditingController();
  final _diseaseController = TextEditingController();
  final _dietaryController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .snapshots()
        .listen((snapshot) {
      if (!snapshot.exists) return;

      final data = snapshot.data();
      _nameController.text = data != null ? data['name'] ?? '' : '';
      _ageController.text = data != null ? data['age'] ?? '' : '';
      _weightController.text = data != null ? data['weight'] ?? '' : '';
      _medicationController.text = data != null ? data['medication'] ?? '' : '';
      _diseaseController.text = data != null ? data['disease'] ?? '' : '';
      _dietaryController.text = data != null ? data['dietary'] ?? '' : '';
    });
  }

  Future<void> _saveProfile() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;
    final userData = {
      'name': _nameController.text,
      'age': _ageController.text,
      'weight': _weightController.text,
      'medication': _medicationController.text,
      'disease': _diseaseController.text,
      'dietary': _dietaryController.text,
    };
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .set(userData);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 13, 72),
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveProfile,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Text('Name',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 23, 13, 72))),
              SizedBox(height: 8),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 23, 13, 72)),
                  ),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
                ),
                style: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
              ),
              SizedBox(height: 16),
              Text('Age',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 23, 13, 72))),
              SizedBox(height: 8),
              TextField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 23, 13, 72)),
                  ),
                  hintText: 'Enter your age',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
                ),
                style: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
              ),
              SizedBox(height: 16),
              Text('Weight',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 23, 13, 72))),
              SizedBox(height: 8),
              TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 23, 13, 72)),
                  ),
                  hintText: 'Enter your weight',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
                ),
                style: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
              ),
              SizedBox(height: 16),
              Text('Current medication intake',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 23, 13, 72))),
              SizedBox(height: 8),
              TextField(
                controller: _medicationController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 23, 13, 72)),
                  ),
                  hintText: 'Enter your current medication intake',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
                ),
                style: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
              ),
              SizedBox(height: 16),
              Text('Chronic diseases',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 23, 13, 72))),
              SizedBox(height: 8),
              TextField(
                controller: _diseaseController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: 'Enter your chronic diseases',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
                ),
                style: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
              ),
              SizedBox(height: 16),
              Text('Dietary prohibitions',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 23, 13, 72))),
              SizedBox(height: 8),
              TextField(
                controller: _dietaryController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 23, 13, 72)),
                  ),
                  hintText: 'Enter your dietary prohibitions',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
                ),
                style: TextStyle(color: Color.fromARGB(255, 23, 13, 72)),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

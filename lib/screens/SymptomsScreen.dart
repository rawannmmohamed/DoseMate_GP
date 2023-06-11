import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DiagnosePage extends StatefulWidget {
  const DiagnosePage({super.key});

  @override
  _DiagnosePageState createState() => _DiagnosePageState();
}

class _DiagnosePageState extends State<DiagnosePage> {
  String? _selectedSymptom; // hold the selected symptom
  List<String> _allSymptoms = []; // list to hold all symptoms
  final CollectionReference _diseasesCollection =
      FirebaseFirestore.instance.collection('diseases');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diagnosis'),
        backgroundColor: const Color.fromARGB(255, 23, 13, 72),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
         StreamBuilder<QuerySnapshot>(
  stream: _diseasesCollection.snapshots(),
  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    if (!snapshot.hasData) {
      return const CircularProgressIndicator();
    }
    List<String> allSymptoms = [];
    for (var doc in snapshot.data!.docs) {
      List<String> symptoms = (doc['Symptoms'] as String).split(',');
      allSymptoms.addAll(symptoms);
    }
    _allSymptoms = allSymptoms.toSet().toList(); // remove duplicates
    return SizedBox(
      width: double.infinity,
      child: DropdownButton<String>(
        value: _selectedSymptom,
        hint: const Text('Select a symptom'),
        onChanged: (String? value) {
          setState(() {
            _selectedSymptom = value;
          });
        },
        items: _allSymptoms
            .map((symptom) => DropdownMenuItem<String>(
                  value: symptom,
                  child: Text(
                    symptom,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ))
            .toList(),
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        isExpanded: true,
        underline: Container(
          height: 1,
          color: Colors.black,
        ),
        dropdownColor: Colors.white,
      ),
    );
  },
),


            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 23, 13, 72),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
              
              onPressed: () async {
                if (_selectedSymptom == null) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Please select a symptom.'),
                  ));
                  return;
                }
                List<DocumentSnapshot> matchingDocuments = [];

                // get the documents from the "diseases" collection
                QuerySnapshot snapshot = await _diseasesCollection.get();
                List<QueryDocumentSnapshot> documents = snapshot.docs;

                for (var doc in documents) {
                  List<String> symptoms =
                      (doc['Symptoms'] as String).split(',');
                  if (symptoms.contains(_selectedSymptom)) {
                    matchingDocuments.add(doc);
                  }
                }
                if (matchingDocuments.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('No matching disease found.'),
                  ));
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DiseaseDetailsPage(document: matchingDocuments[0]),
                    ),
                  );
                }
              },
              child: const Text("Diagnose"),
              
              
            ),
          ],
        ),
      ),
    );
  }
}

class DiseaseDetailsPage extends StatelessWidget {
  final DocumentSnapshot document;

  const DiseaseDetailsPage({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Disease Details"),
        backgroundColor: const Color.fromARGB(255, 23, 13, 72),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Symptoms: ${document['Symptoms']}",
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Disease name: ${document['Disease name']}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Treatment: ${document['Treatment']}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Alternative treatment: ${document['Alternative treatment']}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



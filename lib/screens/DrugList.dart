import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/screens/firebaseAPI.dart';

class DrugList extends StatefulWidget {
  const DrugList({Key? key}) : super(key: key);

  @override
  _DrugListState createState() => _DrugListState();
}

class _DrugListState extends State<DrugList> {
  List<Map<String, dynamic>>? drugs;

  @override
  void initState() {
    super.initState();
    fetchDrugs();
  }

  Future<void> fetchDrugs() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
          await FirebaseFirestore.instance.collection('drugs').get();
      setState(() {
        drugs = snapshot.docs.map((doc) => doc.data()).toList();
        print('Fetched drugs: $drugs');
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 13, 72),
        title: Text('Drug List'),
      ),
      body: drugs == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: drugs!.length,
              itemBuilder: (context, index) {
                var drug = drugs![index];
                return Card(
                  child: ListTile(
                    title: Text(drug['commercial_name']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Active Substance: ${drug['active_substance']}'),
                        SizedBox(height: 4),
                        Text('Side Effects: ${drug['side_effects']}'),
                        SizedBox(height: 4),
                        Text('Conditions treated: ${drug['conditions_treated']}'),
                      ],
                    ),
                    trailing: Text('\$${drug['price_range']}'),
                  ),
                );
              },
            ),
    );
  }
}

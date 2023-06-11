 import 'package:flutter/material.dart';
  import 'package:cloud_firestore/cloud_firestore.dart';


  class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

    @override
    _SearchScreenState createState() => _SearchScreenState();
  }

  class _SearchScreenState extends State<SearchScreen> {
    final TextEditingController _searchController = TextEditingController();
    String _searchText = "";
    List<DocumentSnapshot> _searchResult = [];

    @override
    void initState() {
      super.initState();
    }

    void _runSearch(String searchText) {
      FirebaseFirestore.instance
          .collection('drugs')
          .where('commercial_name', isEqualTo: searchText)
          .get()
          .then((QuerySnapshot querySnapshot) {
        setState(() {
          _searchResult = querySnapshot.docs;
        });
      });
      FirebaseFirestore.instance
          .collection('drugs')
          .where('conditions_treated', isEqualTo: searchText)
          .get()
          .then((QuerySnapshot querySnapshot) {
        setState(() {
          _searchResult.addAll(querySnapshot.docs);
        });
      });
    }

    @override
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      
      title: const Text(
        "Search Drugs",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor:  const Color.fromARGB(255, 23, 13, 72),
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _searchText = _searchController.text;
                      _searchResult.clear();
                    });
                    _runSearch(_searchText);
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _searchResult.length,
            itemBuilder: (context, index) {
              var drug = _searchResult[index].data() as Map<String, dynamic>;
              return Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text(drug['commercial_name']),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Active Substance: ${drug['active_substance']}'),
                      const SizedBox(height: 4),
                      Text('Side Effects: ${drug['side_effects']}'),
                      const SizedBox(height: 4),
                      Text('Conditions treated: ${drug['conditions_treated']}'),
                    ],
                  ),
                  trailing: Text('\$${drug['price_range']}'),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

  }
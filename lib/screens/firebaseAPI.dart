import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class FirebaseAPI {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final drugListRef = FirebaseFirestore.instance.collection('drugs');

  Future<void> addDrug({
    required String commercialName,
    required String activeSubstance,
    required String sideEffects,
    required String priceRange,
    required String conditionsTreated,
  }) async {
    try {
      await drugListRef.add({
        'id': Uuid().v1(),
        'commercial_name': commercialName,
        'active_substance': activeSubstance,
        'side_effects': sideEffects,
        'price_range': priceRange,
        'conditions_treated': conditionsTreated,
      });
    } catch (e) {
      print(e);
    }
  }

  Future<List<Map<String, dynamic>>> getAllDrugs() async {
    final QuerySnapshot<Map<String, dynamic>> snapshot =
        await drugListRef.get();
        
    return snapshot.docs.map((doc) => doc.data()).toList();
  }
}
/*

void main() async {
FirebaseAPI firebaseAPI = FirebaseAPI();

// Add the first drug
await firebaseAPI.addDrug(
  commercialName: 'Florinef',
  activeSubstance: 'fludrocortisone acetate',
  sideEffects: 'swelling, weight gain, and high blood pressure',
  priceRange: 'high',
  conditionsTreated: 'orthostatic hypotension',
);

// Add the second drug
await firebaseAPI.addDrug(
  commercialName: 'ProAmatine',
  activeSubstance: 'midodrine hydrochloride',
  sideEffects: 'headache, chills, and high blood pressure',
  priceRange: 'medium',
  conditionsTreated: 'orthostatic hypotension',
);

// Add the third drug
await firebaseAPI.addDrug(
  commercialName: 'Zestril, Prinivil',
  activeSubstance: 'lisinopril dihydrate',
  sideEffects: 'dizziness, headache, cough, and low blood pressure',
  priceRange: 'low',
  conditionsTreated: 'high blood pressure, heart failure, and diabetic nephropathy',
);

// Add the fourth drug
await firebaseAPI.addDrug(
  commercialName: 'Norvasc',
  activeSubstance: 'amlodipine besylate',
  sideEffects: 'dizziness, flushing, swollen ankles or feet, headache',
  priceRange: 'small-medium',
  conditionsTreated: 'hypertension, angina',
);

// Add the fifth drug
await firebaseAPI.addDrug(
  commercialName: 'Mixtard',
  activeSubstance: 'insulin',
  sideEffects: 'low blood sugar, swelling, and skin reactions at the injection site',
  priceRange: 'medium',
  conditionsTreated: 'diabetes',
);

// Add the sixth drug
await firebaseAPI.addDrug(
  commercialName: 'Glucophage, Fortamet, Riomet',
  activeSubstance: 'metformin hydrochloride',
  sideEffects: 'nausea, vomiting, diarrhea, stomach pain, headache, metallic taste in mouth',
  priceRange: 'small',
  conditionsTreated: 'type 2 diabetes',
);

// Add the seventh drug
await firebaseAPI.addDrug(
  commercialName: 'Questran',
  activeSubstance: 'Cholestyramine',
  sideEffects: 'constipation, bloating, gas, nausea, vomiting, and stomach pain',
  priceRange: 'varies depending on dosage and quantity, typically medium',
  conditionsTreated: 'high cholesterol levels and itching caused by blockage of the bile ducts.',
);

// Add the eigth drug
await firebaseAPI.addDrug(
  commercialName: 'Colestid',
  activeSubstance: 'Cholestyramine resin',
  sideEffects: 'constipation, bloating, gas, and nausea',
  priceRange: 'medium',
  conditionsTreated: 'high cholesterol levels in the blood.',
);

// Add the ninth drug
await firebaseAPI.addDrug(
  commercialName: 'Protonix',
  activeSubstance: 'Pantoprazole sodium',
  sideEffects: 'Headache, nausea, stomach pain, diarrhea, and gas',
  priceRange: 'small to medium',
  conditionsTreated: 'Gastroesophageal reflux disease (GERD), Zollinger-Ellison syndrome, and erosive esophagitis.',
);

// Add the tenth drug
await firebaseAPI.addDrug(
  commercialName: 'Ferrous Sulfate (Iron Supplement)',
  activeSubstance: 'Ferrous Sulfate',
  sideEffects: 'nausea, constipation, diarrhea, stomach cramps',
  priceRange: 'low',
  conditionsTreated: 'Iron deficiency anemia',
);



// Add the eleventh drug
await firebaseAPI.addDrug(
  commercialName: 'Deferoxamine',
  activeSubstance: 'Deferoxamine mesylate',
  sideEffects: 'headache, nausea, vomiting, diarrhea, rash',
  priceRange: 'high',
  conditionsTreated: 'Thalassemia, iron overload due to blood transfusions.',
);

// Add the twelvth drug
await firebaseAPI.addDrug(
    commercialName: 'Sudafed',
  activeSubstance: 'Pseudoephedrine',
  sideEffects: 'insomnia, nervousness, and high blood pressure',
  priceRange: 'hmedium',
  conditionsTreated: 'nasal congestion, sinus congestion, and hay fever',
);

//add the thirteenth drug
await firebaseAPI.addDrug(
    commercialName: 'Tamiflu',
  activeSubstance: 'Oseltamivir phosphate',
  sideEffects: 'nausea, vomiting, and headache',
  priceRange: 'medium to high',
  conditionsTreated: 'Influenza A and B',
);
}

*/




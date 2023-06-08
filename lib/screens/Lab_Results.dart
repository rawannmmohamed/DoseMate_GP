




import 'package:flutter/material.dart';

class LabResultsScreen extends StatefulWidget {
  @override
  _LabResultsScreenState createState() => _LabResultsScreenState();
}

class _LabResultsScreenState extends State<LabResultsScreen> {
  // Available tests
  final List<String> _allTests = [
    "Hemoglobin",
    "HbA1c",
    "Blood Pressure",
    "Cholesterol"
  ];

  // Selected test and user input values
  String? _selectedTest;
  double? _userHemoglobin;
  double? _userHa1c;
  int? _userSystolicBP;
  int? _userDiastolicBP;
  int? _userLDL;
  int? _userHDL;
  bool _showIndicatorButtonEnabled = false;

  var valueResult=TextEditingController();

  var valueResult1=TextEditingController();

  // Standard reference values for each test
  final Map<String, String> _testReferenceValues = {
    "Hemoglobin": "12-18 g/dL",
    "HbA1c": "< 5.7%",
    "Blood Pressure": "< 120/80 mmHg",
    "Cholesterol": "< 200 mg/dL"
  };

  // Indicator result for the selected test
  String? _indicatorResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 13, 72),
        title: Text('Lab Results'),
      ),
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DropdownButtonFormField<String>(
              hint: Text("Select a test"),
              value: _selectedTest,
              onChanged: (String? value) {
                setState(() {
                  _selectedTest = value;
                  _resetInputValues();
                });
              },
              items: _allTests
                  .map((test) => DropdownMenuItem(
                        child: Text(test),
                        value: test,
                      ))
                  .toList(),
            ),
            SizedBox(height: 16.0),
            Text(
              _selectedTest != null ? "Standard reference values: ${_testReferenceValues[_selectedTest]}" : "",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 32.0),
            if (_selectedTest == "Hemoglobin")
              TextFormField(
                controller: valueResult,
                decoration: InputDecoration(labelText: "Enter your Hemoglobin level (g/dL)"),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value';
                  }
                  final double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 1.0 || parsedValue > 30.0) {
                    return 'Please enter a valid value between 1 and 30';
                  }
                  return null;
                },
                onChanged: (value) {
                              setState(() {
                                                              valueResult.text=value;
                                                            });    
                                },
                   
              ),
            if (_selectedTest == "HbA1c")
              TextFormField(
                controller: valueResult,
                decoration: InputDecoration(labelText: "Enter your HbA1c level (%)"),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value';
                  }
                  final double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue < 1.0 || parsedValue > 20.0) {
                    return 'Please enter a valid value between 1 and 20';
                  }
                  return null;
                },
                 onChanged: (value){
                  setState(() {
                    valueResult.text=value;       
                                    });
                  
                 },   
              ),
            if (_selectedTest == "Blood Pressure")
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 150.0,
                    child: TextFormField(
                      controller: valueResult,
                      decoration: InputDecoration(labelText: "Systolic"),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a value';
                        }
                        final int? parsedValue = int.tryParse(value);
                        if (parsedValue == null || parsedValue < 60 || parsedValue > 300) {
                          return 'Please enter a valid value between 60 and 300';
                        }
                        return null;
                      },
                         onChanged: (value){
                          setState(() {
                                                                           valueResult.text=value;
     
                                                    });
                         },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  SizedBox(
                    width: 150.0,
                    child: TextFormField(
                      controller: valueResult1,
                      decoration: InputDecoration(labelText: "Diastolic"),
keyboardType: TextInputType.number,
validator: (value) {
if (value == null || value.isEmpty) {
return 'Please enter a value';
}
final int? parsedValue = int.tryParse(value);
if (parsedValue == null || parsedValue < 40 || parsedValue > 200) {
return 'Please enter a valid value between 40 and 200';
}
return null;
},
   onChanged: (value){
    setState(() {
              valueResult1.text=value;

        });
   }, 
),
),
],
),
if (_selectedTest == "Cholesterol")
Row(
children: <Widget>[
SizedBox(
width: 150.0,
child: TextFormField(
  controller: valueResult,
decoration: InputDecoration(labelText: "LDL"),
keyboardType: TextInputType.number,
validator: (value) {
if (value == null || value.isEmpty) {
return 'Please enter a value';
}
final int? parsedValue = int.tryParse(value);
if (parsedValue == null || parsedValue < 10 || parsedValue > 500) {
return 'Please enter a valid value between 10 and 500';
}
return null;
},
 onChanged: (value){
                          setState(() {
                                                                valueResult.text=value;
                                                    });}
    
),
),
SizedBox(width: 16.0),
SizedBox(
width: 150.0,
child: TextFormField(
  controller: valueResult1,
decoration: InputDecoration(labelText: "HDL"),
keyboardType: TextInputType.number,
validator: (value) {
if (value == null || value.isEmpty) {
return 'Please enter a value';
}
final int? parsedValue = int.tryParse(value);
if (parsedValue == null || parsedValue < 10 || parsedValue > 200) {
return 'Please enter a valid value between 10 and 200';
}
return null;
},
onChanged: (value) {
  setState(() {
              valueResult1.text=value;

        });
},
),
),
],
),
SizedBox(height: 32.0),
if(valueResult.text!='')
ElevatedButton(
child: Text("Show Indicator"), style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),

onPressed:
// _showIndicatorButtonEnabled ?
  () {
    if(_selectedTest=='HbA1c')
      _userHa1c=double.parse(valueResult.text);
    else if(_selectedTest=='Hemoglobin')
      _userHemoglobin=double.parse(valueResult.text);
    else if(_selectedTest=='Blood Pressure')
      {
        _userSystolicBP=int.parse(valueResult.text);
        _userDiastolicBP=int.parse(valueResult1.text);
      }
      else if(_selectedTest=='Cholesterol'){
        _userLDL=int.parse(valueResult.text);
        _userHDL=int.parse(valueResult1.text);
      }
    print("Show Indicator button pressed!");
    _calculateIndicator();
  } ,
),
],
),
),
);
}

// Reset user input values when the selected test changes
void _resetInputValues() {
setState(() {
_userHemoglobin = null;
_userHa1c = null;
_userSystolicBP = null;
_userDiastolicBP = null;
_userLDL = null;
_userHDL = null;
_indicatorResult = null;
_showIndicatorButtonEnabled = false;
});
}

// Enable/disable the "Show Indicator" button based on whether all required input values have been provided
// Enable/disable the "Show Indicator" button based on whether all required input values have been provided
void _updateShowIndicatorButtonEnabled() {
  bool enabled = false;
  switch (_selectedTest) {
    case "Hemoglobin":
      enabled = _userHemoglobin != null;
      break;
    case "HbA1c":
      enabled = _userHa1c != null;
      break;
    case "Blood Pressure":
      enabled = _userSystolicBP != null && _userDiastolicBP != null;
      break;
    case "Cholesterol":
      enabled = _userLDL != null && _userHDL != null;
      break;
  }
  setState(() {
    _showIndicatorButtonEnabled = enabled;
  });
}


// Calculate the indicator for the selected test based on the user's input values
void _calculateIndicator() {
String result;
switch (_selectedTest) {
case "Hemoglobin":
result = _calculateHemoglobinIndicator(_userHemoglobin!);
break;
case "HbA1c":
result = _calculateHa1cIndicator(_userHa1c!);
break;
case "Blood Pressure":
result = _calculateBPIndicator(_userSystolicBP!, _userDiastolicBP!);
break;
case "Cholesterol":
result = _calculateCholesterolIndicator(_userLDL!, _userHDL!);
break;
default:
return;
}
setState(() {
_indicatorResult = result;
});
showDialog(
context: context,
builder: (BuildContext context) {
return AlertDialog(
title: Text("$_selectedTest Indicator Result"),
content: Text(result),
actions: <Widget>[
TextButton(
child: Text('OK'),
onPressed: () {
Navigator.of(context).pop();
_resetInputValues();
},        ),
      ],
    );
  },
);
}

// Calculate the Hemoglobin indicator based on the user's input value
String _calculateHemoglobinIndicator(double hemoglobin) {
if (hemoglobin < 12.0) {
return "Low";
} else if (hemoglobin > 18.0) {
return "High";
} else {
return "Normal";
}
}

// Calculate the HbA1c indicator based on the user's input value
String _calculateHa1cIndicator(double ha1c) {
if (ha1c < 5.0) {
return "Low";
} else if (ha1c >= 5.0 && ha1c <= 5.6) {
return "Normal";
} else if (ha1c >= 5.7 && ha1c <= 6.4) {
return "High";
} else {
return "Very high";
}
}

// Calculate the Blood Pressure indicator based on the user's input values
String _calculateBPIndicator(int systolic, int diastolic) {
if (systolic < 90 || diastolic < 60) {
return "Low";
} else if (systolic >= 90 && systolic <= 120 && diastolic >= 60 && diastolic <= 80) {
return "Normal";
} else if (systolic >= 121 && systolic <= 129 && diastolic >= 81 && diastolic <= 84) {
return "Elevated";
} else if (systolic >= 130 && systolic <= 139 && diastolic >= 85 && diastolic <= 89) {
return "Stage 1 Hypertension";
} else if (systolic >= 140 || diastolic >= 90) {
return "Stage 2 Hypertension";
} else {
return "";
}
}

// Calculate the Cholesterol indicator based on the user's input values
String _calculateCholesterolIndicator(int ldl, int hdl) {
if (ldl >= 190) {
return "Very high";
} else if (ldl >= 160 && ldl <= 189) {
return "High";
} else if (ldl >= 130 && ldl <= 159) {
return "Borderline high";
} else if (ldl < 100) {
return "Optimal";
} else {
return "Normal";
}
}
}

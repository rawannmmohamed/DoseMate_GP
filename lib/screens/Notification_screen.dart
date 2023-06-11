import 'package:flutter/material.dart';

class ReminderScreen extends StatefulWidget {
  @override
  _ReminderScreenState createState() => _ReminderScreenState();
}
class _ReminderScreenState extends State<ReminderScreen> {
  DateTime? _dateTime;
  String? _message;
  bool _showReminder = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set a Reminder'),
         backgroundColor:const Color.fromARGB(255, 23, 13, 72) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Enter message'),
              onChanged: (value) {
                setState(() {
                  _message = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text(
                  _dateTime == null ? 'Select Date and Time' : _dateTime.toString()),
              onPressed: () async {
                final selectedDateTime = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(DateTime.now().year + 5));
                if (selectedDateTime != null) {
                  final selectedTime = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                  if (selectedTime != null) {
                    setState(() {
                      _dateTime = DateTime(selectedDateTime.year,
                          selectedDateTime.month, selectedDateTime.day,
                          selectedTime.hour, selectedTime.minute);
                    });
                  }
                }
              },
                style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Set Reminder'),
              onPressed: () {
                // TODO: Implement reminder logic
                if (_dateTime != null && _message != null && _message!.isNotEmpty) {
                  setState(() {
                    _showReminder = true;
                  });
                }
              },
                style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 23, 13, 72),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            
          ), ),
            ),
            SizedBox(height: 16.0),
            if (_showReminder)
              Text(

                '${_dateTime.toString()}   -   $_message',
                style: TextStyle(fontSize: 20.0 , color: Color.fromARGB(255, 163, 31, 31),fontWeight:FontWeight.bold), 
              ),
          ],
        ),
    ),
);
}
}
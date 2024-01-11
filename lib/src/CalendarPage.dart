import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'WeatherPage.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, List<String>> _events = {};
  TextEditingController _eventController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
        actions: [
          IconButton(
            icon: Icon(Icons.wb_sunny),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WeatherPage()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: _events.containsKey(_selectedDay)
                    ? Colors.pink
                    : Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          SizedBox(height: 20),
          if (_selectedDay != null) ...[
            Text(
              'Events for $_selectedDay',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ...(_events[_selectedDay!] ?? []).map((event) => ListTile(
                  title: Text(event),
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addEvent,
              child: Text('Add Event'),
            ),
          ],
        ],
      ),
    );
  }

  void _addEvent() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Add Event'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _eventController,
              decoration: InputDecoration(labelText: 'Event Description'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: _selectedDay!,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.utc(2030, 12, 31),
                ).then((selectedDate) {
                  if (selectedDate != null) {
                    _addEventToDay(selectedDate);
                    Navigator.pop(context);
                  }
                });
              },
              child: Text('Select Date'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              _addEventToDay(_selectedDay!);
              Navigator.pop(context);
              setState(() {});
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }

  void _addEventToDay(DateTime day) {
    String eventDescription = _eventController.text.trim();
    if (eventDescription.isNotEmpty) {
      _events[day] = _events[day] ?? [];
      _events[day]!.add(eventDescription);
      _eventController.clear();
    }
  }

  bool isSameDay(DateTime? a, DateTime? b) {
    return a?.year == b?.year && a?.month == b?.month && a?.day == b?.day;
  }
}

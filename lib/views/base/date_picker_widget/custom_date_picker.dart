import 'package:flutter/material.dart';
import 'package:ovu_application/helper/constants.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomDatePicker extends StatefulWidget {
  final CalendarFormat format;

  CustomDatePicker({super.key, this.format = CalendarFormat.month});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime _today = DateTime.now();
  _onDaySelected(DateTime day, DateTime focuseDay) {
    setState(() {
      _today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 6,
      shape: widget.format == CalendarFormat.week
          ? RoundedRectangleBorder()
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              //side: BorderSide(color: Colors.grey.shade300)
            ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
        child: TableCalendar(
          locale: Localizations.localeOf(context).languageCode,
          headerVisible: widget.format == CalendarFormat.week ? false : true,
          calendarFormat: widget.format,
          firstDay: DateTime.utc(2010, 10, 20),
          lastDay: DateTime.utc(2040, 10, 20),
          focusedDay: _today,
          headerStyle: widget.format == CalendarFormat.week
              ? HeaderStyle(
                  formatButtonVisible: false,
                  formatButtonShowsNext: false,
                  leftChevronVisible: false,
                  rightChevronVisible: false)
              : HeaderStyle(
                  titleCentered: true,
                  leftChevronIcon: Icon(
                      Icons.keyboard_double_arrow_left_outlined,
                      color: PURBLE_COLOR),
                  rightChevronIcon: Icon(
                      Icons.keyboard_double_arrow_right_outlined,
                      color: PURBLE_COLOR),
                  formatButtonVisible: false,
                  titleTextStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w800)),
          availableGestures: AvailableGestures.all,
          onDaySelected: _onDaySelected,
          rowHeight: 35,
          selectedDayPredicate: (day) => isSameDay(day, _today),
          calendarStyle: CalendarStyle(
              todayTextStyle: TextStyle(color: Colors.black),
              todayDecoration: BoxDecoration(
                color: Colors.yellow.shade300,

                //borderRadius: BorderRadius.circular(6)
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.yellow,
                //borderRadius: BorderRadius.circular(6)
              )),
        ),
      ),
    );
  }
}

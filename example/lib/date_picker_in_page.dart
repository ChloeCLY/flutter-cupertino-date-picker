import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/date_picker_widget.dart';

///
/// @author dylan wu
/// @since 2019-05-10
class DatePickerInPage extends StatefulWidget {
  DatePickerInPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DatePickerInPageState();
}

class _DatePickerInPageState extends State<DatePickerInPage> {
  DateTime _currDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DatePicker In Page")),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              child: DatePickerWidget(
                minDateTime: DateTime(2005, 5, 15),
                initialDateTime: DateTime(2005, 5, 20),
                dateFormat: 'MM-dd-yyyy',
                onChange: (dateTime, selectedIndex) {
                  debugPrint('****** dataTime=$dateTime\nselectedIndex=$selectedIndex');
                  setState(() {
                    _currDateTime = dateTime;
                  });
                },
              ),
            ),

            // Selected date
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Selected Date:', style: Theme.of(context).textTheme.subhead),
                Container(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    _currDateTime != null ? '${_currDateTime.year}-${_currDateTime.month}-${_currDateTime.day}' : '',
                    style: Theme.of(context).textTheme.title,
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

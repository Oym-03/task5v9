import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  return runApp(app());
}

int count = 0;
List<int> mr1 = [];
List<int> mr2 = [11, 1, 2, 4, 22, 5, 15];
List<int> mr3 = [5, 15, 1];
List<int> mr4 = [11, 1, 2, 4, 27, 22, 5, 15];
List<int> mr5 = [11, 1, 28, 2, 4, 22, 5, 15];
List<int> mr6 = [11, 1, 2, 4, 22, 5, 15];
List<int> mr7 = [11, 1, 2, 4, 22, 5, 15];
List<int> mr8 = [11, 1, 2, 4, 22, 5, 15];
List<int> mr9 = [11, 1, 2, 4, 22, 5, 15];
List<int> mr10 = [11, 1, 2, 4, 22, 5, 15];
List<int> mr11 = [11, 1, 2, 4, 22, 5, 15];
List<int> mr12 = [11, 1, 2, 4, 22, 5, 15];
List<List<int>> red = [
  mr1,
  mr2,
  mr3,
  mr4,
  mr5,
  mr6,
  mr7,
  mr8,
  mr9,
  mr10,
  mr11,
  mr12
];
List<int> redm = [2, 3, 4, 5, 6];

List<int> mg1 = [];
List<int> mg2 = [3, 8, 7, 25, 13, 10];
List<int> mg3 = [3, 8, 7, 25, 13, 10];
List<int> mg4 = [3, 8, 7, 25, 13, 10];
List<int> mg5 = [3, 8, 7, 25, 13, 10];
List<int> mg6 = [3, 8, 7, 25, 13, 10];
List<int> mg7 = [3, 8, 7, 25, 13, 10];
List<int> mg8 = [3, 8, 7, 25, 13, 10];
List<int> mg9 = [3, 8, 7, 25, 13, 10];
List<int> mg10 = [3, 8, 7, 25, 13, 10];
List<int> mg11 = [3, 8, 7, 25, 13, 10];
List<int> mg12 = [3, 8, 7, 25, 13, 10];
List<List<int>> green = [
  mg1,
  mg2,
  mg3,
  mg4,
  mg5,
  mg6,
  mg7,
  mg8,
  mg9,
  mg10,
  mg11,
  mg12
];
List<int> greenm = [2, 3, 4, 5, 10,6];

List<String> dayNames = ['Fri', 'Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu'];

List<String> AdayNames = [
  'الإثنين',
  'الثلاثاء',
  'الأربعاء',
  'الخميس',
  'الجمعة',
  'السبت',
  'الأحد'
];

List<List<String>> DN=[dayNames,AdayNames];

List<String> monthNames = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];
List<String> AmonthNames = [
  'يناير',
  'فبراير',
  'مارس',
  'أبريل',
  'مايو',
  'يونيو',
  'يوليو',
  'أغسطس',
  'سبتمبر',
  'أكتوبر',
  'نوفمبر',
  'ديسمبر'
];

List<List<String>> MN=[monthNames,AmonthNames];


List<String> Available = ['avalable', 'متوفر'];
List<String> notAvailable = ['not available', 'غير متوفر'];
List<String> language = ['English', 'عربي'];

enum DayColor { normal, red, green }

Map<int, DayColor> _dayColor = {};

class app extends StatelessWidget {
  const app({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => english(),
        '/second': (context) => arabic(),
        '/third': (context) => cc(),
      },
    );
  }
}

class cc extends StatelessWidget {
  const cc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'hi',
        style: TextStyle(fontSize: 100),
      ),
    ));
  }
}

class english extends StatelessWidget {
  const english({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 40,
          ),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text(
                  language[count],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                width: 20,
              )
            ],
          ),
          Container(
            height: 500,
            width: 400,
            child: CalendarWidget(),
          ),
        ],
      ),
    );
  }
}

class arabic extends StatelessWidget {
  const arabic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 38,
          ),
          Row(
            children: [
              Spacer(),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    language[1],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                width: 20,
              )
            ],
          ),
          Container(
            height: 500,
            width: 400,
            child: aCalendarWidget(),
          ),
        ],
      ),
    );
  }
}

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  int count = 0;
  bool isEnabled = true;

  DateTime _selectedDate = DateTime.now();

  get daysInMonth =>
      DateTime(_selectedDate.year, _selectedDate.month + 1, 0).day;

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2023),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.0,
        ),
        Row(
          children: [
            Container(
              width: 5,
            ),
            Text(
              notAvailable[0],
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.circle,
              color: Colors.red,
              size: 20,
            ),
            Container(
              width: 5,
            ),
            Text(
              Available[0],
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.circle,
              color: Colors.green,
              size: 20,
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                setState(() {
                  int count = 0;
                  bool isEnabled = true;
                  _selectedDate = DateTime(_selectedDate.year,
                      _selectedDate.month - 1, _selectedDate.day);
                });
              },
            ),
            Text(
              '${MN[count][_selectedDate.month - 1]}',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                setState(() {
                  int count = 0;
                  bool isEnabled = true;

                  _selectedDate = DateTime(_selectedDate.year,
                      _selectedDate.month + 1, _selectedDate.day);
                });
              },
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Row(
          children: List.generate(7, (index) {

            return Expanded(
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(

                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    DN[count][index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: daysInMonth + _selectedDate.weekday,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              final dayOfWeek = (index - _selectedDate.weekday) % 7;
              final date = DateTime(_selectedDate.year, _selectedDate.month,
                  index + 1 - _selectedDate.weekday);
              if (index < _selectedDate.weekday) {
                return Container();
              }
              final isSelected = date == _selectedDate;
              final textColor = isSelected
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1?.color;
              if (redm.asMap().containsValue(_selectedDate.month)) {
                if (red[_selectedDate.month - 1]
                    .asMap()
                    .containsValue(date.day)) {
                  _dayColor[date.day] = DayColor.red;
                } else {
                  _dayColor[date.day] = DayColor.normal;
                }
              } else {
                _dayColor[date.day] = DayColor.normal;
              }

              if (greenm.asMap().containsValue(_selectedDate.month)) {
                if (green[_selectedDate.month - 1]
                    .asMap()
                    .containsValue(date.day)) {
                  _dayColor[date.day] = DayColor.green;
                }
              }

              return GestureDetector(
                onTap: () {
                  if (red[_selectedDate.month - 1]
                      .asMap()
                      .containsValue(date.day)) {
                    setState(
                      () {
                        Navigator.pushNamed(context, '/third');
                      },
                    );
                  }
                  ;
                },
                child: Container(
                  margin: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: _dayColor[date.day] == DayColor.red
                        ? Colors.red
                        : _dayColor[date.day] == DayColor.green
                            ? Colors.green
                            : null,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Center(
                    child: Text(
                      '${date.day}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: isSelected ? FontWeight.bold : null,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class aCalendarWidget extends StatefulWidget {
  const aCalendarWidget({super.key});

  @override
  _aCalendarWidgetState createState() => _aCalendarWidgetState();
}

class _aCalendarWidgetState extends State<aCalendarWidget> {
  int count = 0;
  bool isEnabled = true;

  DateTime _selectedDate = DateTime.now();

  get daysInMonth =>
      DateTime(_selectedDate.year, _selectedDate.month + 1, 0).day;

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2023),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.0,
        ),
        Row(
          children: [
            Container(
              width: 5,
            ),
            Text(
              notAvailable[count+1],
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.circle,
              color: Colors.red,
              size: 20,
            ),
            Container(
              width: 5,
            ),
            Text(
              Available[count+1],
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.circle,
              color: Colors.green,
              size: 20,
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                setState(() {
                  int count = 0;
                  bool isEnabled = true;
                  _selectedDate = DateTime(_selectedDate.year,
                      _selectedDate.month - 1, _selectedDate.day);
                });
              },
            ),
            Text(
              '${MN[count+1][_selectedDate.month - 1]}',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                setState(() {
                  int count = 0;
                  bool isEnabled = true;

                  _selectedDate = DateTime(_selectedDate.year,
                      _selectedDate.month + 1, _selectedDate.day);
                });
              },
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Row(
          children: List.generate(7, (index) {
            return Expanded(
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    DN[count+1][index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: daysInMonth + _selectedDate.weekday,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              final dayOfWeek = (index - _selectedDate.weekday) % 7;
              final date = DateTime(_selectedDate.year, _selectedDate.month,
                  index + 1 - _selectedDate.weekday);
              if (index < _selectedDate.weekday) {
                return Container();
              }
              final isSelected = date == _selectedDate;
              final textColor = isSelected
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1?.color;
              if (redm.asMap().containsValue(_selectedDate.month)) {
                if (red[_selectedDate.month - 1]
                    .asMap()
                    .containsValue(date.day)) {
                  _dayColor[date.day] = DayColor.red;
                } else {
                  _dayColor[date.day] = DayColor.normal;
                }
              } else {
                _dayColor[date.day] = DayColor.normal;
              }

              if (greenm.asMap().containsValue(_selectedDate.month)) {
                if (green[_selectedDate.month - 1]
                    .asMap()
                    .containsValue(date.day)) {
                  _dayColor[date.day] = DayColor.green;
                }
              }
              return GestureDetector(
                onTap: () {
                  if (red[_selectedDate.month - 1]
                      .asMap()
                      .containsValue(date.day)) {
                    setState(
                      () {
                        Navigator.pushNamed(context, '/third');
                      },
                    );
                  }
                  ;
                },
                child: Container(
                  margin: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: _dayColor[date.day] == DayColor.red
                        ? Colors.red
                        : _dayColor[date.day] == DayColor.green
                            ? Colors.green
                            : null,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Center(
                    child: Text(
                      '${date.day}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: isSelected ? FontWeight.bold : null,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

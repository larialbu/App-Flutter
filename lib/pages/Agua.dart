import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Agua extends StatefulWidget {
  @override
  _AguaState createState() => _AguaState();
}

class _AguaState extends State<Agua> {
  final ScrollController _scrollController = ScrollController();

  DateTime now = DateTime.now();
  List<DateTime> dates = [];

  late int selectedDayIndex;

  @override
  void initState() {
    super.initState();

    // Adicionar os dias anteriores ao dia atual
    for (int i = -10; i <= 0; i++) {
      DateTime date = now.add(Duration(days: i));
      dates.add(date);
    }

    // Adicionar os dias posteriores ao dia atual
    for (int i = 1; i <= 10; i++) {
      DateTime date = now.add(Duration(days: i));
      dates.add(date);
    }

    // Encontrar o índice da data atual
    selectedDayIndex = dates.indexWhere((date) => isSameDay(date, now));

    // Role para a data atual
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        selectedDayIndex * 58.0,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Água'),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Row(
              children: [
                for (var i = 0; i < dates.length; i++)
                  _buildDateContainer(dates[i], i),
              ],
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Registre a quantidade de água consumida',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Implemente aqui a lógica para registrar a quantidade de água
                    },
                    child: Text('Registrar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateContainer(DateTime date, int index) {
    bool isToday = isSameDay(date, now);
    bool isSelected = index == selectedDayIndex;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDayIndex = index;
        });
      },
      child: Container(
        width: 50,
        height: 65,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? Colors.blue : Colors.grey[300],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('EEE', 'pt_BR').format(date).toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              DateFormat('d', 'pt_BR').format(date),
              style: TextStyle(
                fontSize: isToday ? 18 : 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}

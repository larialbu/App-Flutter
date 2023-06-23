import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:telahome/pages/MedicamentoAdd.dart';
import 'package:flutter/services.dart';

class Medicamento extends StatefulWidget {
  @override
  _MedicamentoState createState() => _MedicamentoState();
}

class _MedicamentoState extends State<Medicamento> {
  final ScrollController _scrollController = ScrollController();
  TextEditingController dateInput = TextEditingController();
  TimeOfDay horarioTomar = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    List<DateTime> dates = [];

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
    int currentIndex = dates.indexWhere((date) => isSameDay(date, now));

    // Role para a data atual
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _scrollController.animateTo(
        currentIndex *
            58.0, // Largura do container de data (50) + margem direita (8)
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 16, top: 40, bottom: 8),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Implemente aqui a ação ao pressionar o ícone de voltar
                  },
                  child: Container(
                    width: 20,
                    height: 40,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Medicamentos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Row(
              children: [
                for (var date in dates) _buildDateContainer(date, now),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String nomeMedicamento = '';
          String doseMedicamento = '';
          TimeOfDay horarioTomar = TimeOfDay.now();

          await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Adicionar Medicamento'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Nome do Medicamento',
                        filled: true,
                        fillColor: Color(0x54d9d9d9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) {
                        nomeMedicamento = value;
                      },
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Dose do Medicamento',
                        filled: true,
                        fillColor: Color(0x54d9d9d9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) {
                        doseMedicamento = value;
                      },
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: dateInput,
                      decoration: InputDecoration(
                        hintText: "Dias para Tomar",
                        filled: true,
                        fillColor: Color(0x54d9d9d9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      readOnly: true,
                      //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2100));

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                        } else {}
                      },
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Horário para Tomar',
                        filled: true,
                        fillColor: Color(0x54d9d9d9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      readOnly: true,
                      // Defina um controlador para armazenar o valor selecionado
                      controller: TextEditingController(
                        text: horarioTomar != null
                            ? horarioTomar.format(context)
                            : '',
                      ),
                      onTap: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: horarioTomar ?? TimeOfDay.now(),
                        );
                        if (pickedTime != null) {
                          setState(() {
                            horarioTomar = pickedTime;
                          });
                        }
                      },
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Cancelar'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text('Adicionar'),
                    onPressed: () {
                      // Aqui você pode processar a entrada do usuário e realizar as ações necessárias
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildDateContainer(DateTime date, DateTime now) {
    bool isToday = isSameDay(date, now);
    bool isBeforeToday = date.isBefore(now);

    return Container(
      width: 50,
      height: 65,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isToday ? Colors.green : Color(0xff9dcf88),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DateFormat('EEE', 'pt_BR').format(date).toUpperCase(),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4),
          Text(
            DateFormat('d', 'pt_BR').format(date),
            style: TextStyle(
              fontSize: isToday ? 18 : 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}

void main() async {
  // Inicializar dados de formatação de data e hora
  await initializeDateFormatting();

  runApp(MaterialApp(
    home: Medicamento(),
  ));
}

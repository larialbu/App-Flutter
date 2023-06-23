import 'package:flutter/material.dart';

class MedicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 32,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Medicamentos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const MedicationCard(
                      time: '8:00',
                      medicationName: 'Omega 3',
                      frequency: '2x ao dia',
                      duration: '6 meses',
                    ),
                    const SizedBox(height: 8),
                    const MedicationCard(
                      time: '14:00',
                      medicationName: 'Buscopam',
                      frequency: '1x por dia',
                      duration: '7 dias',
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const MedicationDay(date: 'Dom', day: '14'),
                    const MedicationDay(date: 'Seg', day: '15'),
                    const MedicationDay(date: 'Ter', day: '16'),
                    const MedicationDay(date: 'Qua', day: '17'),
                    const MedicationDay(date: 'Qui', day: '18'),
                    const MedicationDay(date: 'Sex', day: '19'),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -8,
              right: 0,
              child: Container(
                width: 38,
                height: 50,
                child: Stack(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF9ED589),
                      ),
                    ),
                    Positioned(
                      top: 18,
                      left: 18,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: const Color(0xFF9ED589),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MedicationCard extends StatelessWidget {
  final String time;
  final String medicationName;
  final String frequency;
  final String duration;

  const MedicationCard({
    required this.time,
    required this.medicationName,
    required this.frequency,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            time,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.only(right: 12),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF9ED589),
                ),
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF9ED589),
                  ),
                  child: Transform.rotate(
                    angle: 40 * 3.14159 / 180,
                    child: Container(
                      width: double.infinity,
                      height: 62,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFF9ED589),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    medicationName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        frequency,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        duration,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MedicationDay extends StatelessWidget {
  final String date;
  final String day;

  const MedicationDay({
    required this.date,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 65,
      decoration: BoxDecoration(
        color: const Color(0xFF9ED589),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 0.5,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            day,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

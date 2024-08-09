import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/ObservationsChart.dart';
import 'package:flutter_application_2/components/progressChart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),

      child: ListView(
        children: [
          const SizedBox(height: 20.0),
          SizedBox(
            height: 68,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              children: [
                Container(
                  height: 60,
                  width: 190,
                  margin: const EdgeInsets.only(right: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFC1E2F4),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/observationIcon.svg',
                        fit: BoxFit.scaleDown,
                        width: 8,
                        height: 10,
                      ),
                    ),
                    title: const Text('150',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito')),
                    subtitle: const Text('My observations',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Nunito')),
                  ),
                ),
                Container(
                  height: 60,
                  width: 190,
                  // padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.only(right: 8.0),
                  // padding: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFC1E2F4),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/Vector1.svg',
                        fit: BoxFit.scaleDown,
                        width: 8,
                        height: 10,
                      ),
                    ),
                    title: const Text('150',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito')),
                    subtitle: const Text('Pending',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Nunito')),
                  ),
                ),
                Container(
                  height: 60,
                  width: 190,
                  margin: const EdgeInsets.only(right: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFEDAA),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/Vector2.svg',
                        fit: BoxFit.scaleDown,
                        width: 8,
                        height: 10,
                      ),
                    ),
                    title: const Text('150',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito')),
                    subtitle: const Text('Progress',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Nunito')),
                  ),
                ),
                Container(
                  height: 60,
                  width: 190,
                  margin: const EdgeInsets.only(right: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFBFFFC9),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/Vector3.svg',
                        fit: BoxFit.scaleDown,
                        width: 8,
                        height: 10,
                      ),
                    ),
                    title: const Text('150',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito')),
                    subtitle: const Text('Resolved',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Nunito')),
                  ),
                ),
                Container(
                  height: 60,
                  width: 190,
                  margin: const EdgeInsets.only(right: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: ListTile(
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9E9E9),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/hide.svg',
                        fit: BoxFit.scaleDown,
                        width: 8,
                        height: 10,
                      ),
                    ),
                    title: const Text('150',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito')),
                    subtitle: const Text('Closed',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Nunito')),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 17.0),
          ItemsView(),
          const SizedBox(height: 10),
          const ObservationChart(),
           const ProgressChart(),
        ],
      ),
    );
  }
}

class ItemsView extends StatelessWidget {
  ItemsView({super.key});
  final List<String> entries = <String>[
    'Daily',
    'Safety',
    'Exellent',
    'Work clothes, E.P.I',
    'Bad condition',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10.0, right: 5.0),
        child: Row(
          children: entries.map((entry) {
            return Card(
              margin: const EdgeInsets.symmetric(
                  horizontal: 3.0), // Adjusted for spacing
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(entry,
                        style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito')),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.close,
                      size: 10,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

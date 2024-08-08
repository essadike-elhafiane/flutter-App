// bottombar.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bottombar extends StatelessWidget {
   const Bottombar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, -1), // negative offset for top shadow
          ),
        ],
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        // notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE9F1F5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        // Add button functionality here
                      },
                      child: SvgPicture.asset(
                        'assets/images/Vector.svg',
                        fit: BoxFit.scaleDown,
                        width: 8,
                        height: 10,
                      ),
                      
                    ),
                  ),
  
                ],

            
              ),
            
            ),
            const Spacer(),
            Expanded(
              flex: 1,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        // Add button functionality here
                      },
                      child: SvgPicture.asset(
                        'assets/images/observationIcon1.svg',
                        fit: BoxFit.scaleDown,
                        width: 8,
                        height: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        // Add button functionality here
                      },
                      child: SvgPicture.asset(
                        'assets/images/report.svg',
                        fit: BoxFit.scaleDown,
                        width: 8,
                        height: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
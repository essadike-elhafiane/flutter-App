
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildBottomBarItem(0, 'assets/images/Vector.svg', flex: 2),
            const Spacer(),
            _buildBottomBarItem(1, 'assets/images/observationIcon1.svg'),
            _buildBottomBarItem(2, 'assets/images/report.svg'),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBarItem(int index, String assetPath, {int flex = 1}) {
    bool isSelected = _selectedIndex == index;
    return Expanded(
      flex: flex,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFFE9F1F5) : const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(10.0),
              onTap: () => _onItemTapped(index),
              child: SvgPicture.asset(
                assetPath,
                fit: BoxFit.scaleDown,
                width: 8,
                height: 10,
                color: isSelected ? Colors.blue : index == 1 ? null : const Color(0xFFA4A4A4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// )
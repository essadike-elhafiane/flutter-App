import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ManualAlert extends StatefulWidget {
  @override
  _ManualAlertState createState() => _ManualAlertState();
}

class _ManualAlertState extends State<ManualAlert> {
  String selectedSite = 'Site 001';
  String selectedZone = 'Zone 001';
  int selectedLevel = 1;
  bool isRoomSelected = true;
  String selectedRoom = 'Room 1.02';
  bool isInsideSelected = true;
  String selectedTime = '60 Minutes';

  int isYellowSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the default back button
        backgroundColor:
            const Color(0xFFE3E3E3), // Set the background color to gray
        title: const Text('Manual alert'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/Vector5.svg',
              width: 20.0,
              height: 20.0,
            ),
            onPressed: () {
              Navigator.pop(context); // Your custom action
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(bottom: 20),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDropdownField('Site', selectedSite, 1, true),
              _buildDropdownField('Zone', selectedZone, 2, true),
              _buildLevelSelector(),
              _buildLocationToggle(),
              _buildDropdownField('Room', selectedRoom, 3, false,
                  showAddOption: true),
              _buildPositionToggle(),
              _buildDropdownField(
                  'Time expected to complete the job', selectedTime, 4, false),
              const SizedBox(height: 20),
              _buildSendAlertButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField(String label, String value, int id, bool isYellow,
      {bool showAddOption = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            label,
            style: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          if (showAddOption)
            TextButton(
              child: const Text('+ add', style: TextStyle(color: Colors.blue)),
              onPressed: () {},
            ),
          if (!showAddOption)
            const Icon(Icons.info_outline, color: Colors.grey),
        ]),
        if (!showAddOption) const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(value),
                    Row(children: [
                      if (isYellow)
                        InkWell(
                          onTap: () {
                            setState(() {
                              isYellowSelected = id;
                            });
                          },
                          child: Icon(Icons.bookmark,
                              color: isYellowSelected == id
                                  ? Colors.amber
                                  : Colors.grey),
                        ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                        size: 25,
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            // if (showAddOption)
            //   TextButton(r
            //     child: Text('+ add', style: TextStyle(color: Colors.blue)),
            //     onPressed: () {},
            //   ),
          ],
        ),
        const SizedBox(height: 23),
      ],
    );
  }

 Widget _buildLevelSelector() {
  final ScrollController _scrollController = ScrollController();

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Level', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      SizedBox(height: 8),
      
      Row(
        
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (selectedLevel <= -2) return;
                selectedLevel--;
                _scrollController.animateTo(
                  _scrollController.offset - 50,
                  duration: Duration(milliseconds: 100),
                  curve: Curves.easeOut,
                );
              });
            },
            icon: Icon(Icons.chevron_left),
          ),
          Expanded(
            
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = -2; i <= 10; i++)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: i == selectedLevel ? Colors.deepPurple : Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text('$i'),
                        ),
                        onTap: () => setState(() => selectedLevel = i),
                      ),
                    ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (selectedLevel >= 10) return;
                selectedLevel++;
                _scrollController.animateTo(
                  _scrollController.offset + 50,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                );
              });
            },
            icon: Icon(Icons.chevron_right),
          ),
        ],
      ),
      SizedBox(height: 23),
    ],
  );
}

  Widget _buildLocationToggle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Location',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Room',
                      style: TextStyle(
                          color: isRoomSelected ? Colors.white : Colors.black)),
                  height: 40,
                  decoration: BoxDecoration(
                    color: isRoomSelected ? Colors.deepPurple : Colors.white,
                    border: const Border(
                      top: BorderSide(color: Colors.grey),
                      bottom: BorderSide(color: Colors.grey),
                      left: BorderSide(color: Colors.grey),
                    ),
                    // borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onTap: () => setState(() => isRoomSelected = true),
              ),
            ),
            // SizedBox(width: 8),

            Expanded(
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                    color: !isRoomSelected ? Colors.deepPurple : Colors.white,
                    border: const Border(
                      top: BorderSide(color: Colors.grey),
                      bottom: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                    ),
                    // borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text('Equipment',
                      style: TextStyle(
                          fontSize: 14,
                          color:
                              !isRoomSelected ? Colors.white : Colors.black)),
                ),
                onTap: () => setState(() => isRoomSelected = false),
              ),
            ),
          ],
        ),
        SizedBox(height: 23),
      ],
    );
  }

  Widget _buildPositionToggle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Position',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                    color: isInsideSelected ? Colors.deepPurple : Colors.white,
                    border: const Border(
                      top: BorderSide(color: Colors.grey),
                      bottom: BorderSide(color: Colors.grey),
                      left: BorderSide(color: Colors.grey),
                    ),
                    // borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text('Inside',
                      style: TextStyle(
                          color:
                              isInsideSelected ? Colors.white : Colors.black)),
                ),
                onTap: () => setState(() => isInsideSelected = true),
              ),
            ),

            // SizedBox(width: 8),

            Expanded(
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Outside',
                      style: TextStyle(
                          fontSize: 14,
                          color:
                              !isInsideSelected ? Colors.white : Colors.black)),
                  height: 40,
                  decoration: BoxDecoration(
                    color: !isInsideSelected ? Colors.deepPurple : Colors.white,
                    border: const Border(
                      top: BorderSide(color: Colors.grey),
                      bottom: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.grey),
                    ),
                    // borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onTap: () => setState(() => isInsideSelected = false),
              ),
            ),
          ],
        ),
        SizedBox(height: 23),
      ],
    );
  }
}



class _buildSendAlertButton extends StatefulWidget {
  @override
  __buildSendAlertButtonState createState() => __buildSendAlertButtonState();
}

class __buildSendAlertButtonState extends State<_buildSendAlertButton> {
  double _opacity = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _opacity = 0.5; // Decrease opacity
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _opacity = 1.0; // Restore opacity
    });
  }

  void _onTapCancel() {
    setState(() {
      _opacity = 1.0; // Restore opacity
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      onTap: () {
        // Handle tap
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 100),
        opacity: _opacity,
        child: Container(
          width: double.infinity,
          height: 44,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFF25A5DC),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.send,
                color: Colors.white,
              ),
              const SizedBox(width: 8), // Add spacing between the icon and text
              const Text(
                'Send Alert',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

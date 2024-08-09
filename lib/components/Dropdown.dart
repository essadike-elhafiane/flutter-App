import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final int? index;
  const Dropdown({Key? key, this.index}) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  late String dropdownValue;
  late List<String> timeItems;
  late String title;

  @override
  void initState() {
    super.initState();
    _initializeValues();
  }

  void _initializeValues() {
    if (widget.index == 1) {
      timeItems = List<String>.generate(12, (index) {
        return '${(index + 1) * 5} Minutes';
      });
      title = 'Time expected to complete the job';
      dropdownValue = timeItems.isNotEmpty ? timeItems[0] : '';
    } else {
      timeItems = List<String>.generate(5, (index) {
        return 'Room ${index + 1}.02';
      });
      title = 'Room';
      dropdownValue = timeItems.isNotEmpty ? timeItems[0] : '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (widget.index == 0)
              TextButton(
                onPressed: openDialog,
                child: const Text(
                  '+ add',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
          ],
        ),
        if (widget.index != 0) const SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
              size: 25,
            ),
            iconSize: 24,
            dropdownColor: Colors.white,
            isExpanded: true, 
            style: const TextStyle(
              color: Colors.black, 
              fontSize: 14, 
              fontWeight: FontWeight.w400, 
            ),
            underline: Container(), 
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: timeItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: const TextStyle(color: Colors.black)),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Future<void> openDialog() async {
    String newRoomName = '';

    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Add Room'),
          content: TextField(
            decoration: const InputDecoration(hintText: 'Enter room name'),
            autofocus: true,
            onChanged: (value) {
              newRoomName = value;
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (newRoomName.isNotEmpty) {
                  setState(() {
                    timeItems.add('Room $newRoomName');
                    dropdownValue = 'Room $newRoomName';
                  });
                }
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

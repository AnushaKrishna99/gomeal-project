import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';


class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);


  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  List<TimeOfDay> selectedStartTimes = List.generate(6, (index) => TimeOfDay.now());
  List<TimeOfDay> selectedEndTimes = List.generate(6, (index) => TimeOfDay.now());
  List<int> onDemandAmounts = List.generate(6, (index) => 0);
  List<int> preOrderAmounts = List.generate(6, (index) => 0);
  List<int> scheduledAmounts = List.generate(6, (index) => 0);
  List<List<String>> _selectedDaysList = List.generate(6, (index) => []);
  List<List<String>> _selectedMealTypesList = List.generate(6, (index) => []);
  List<List<String>> _selectedBudgetList = List.generate(6, (index) => []);
  List<int> counts = [100, 200, 150, 120, 250, 180];
  String selectedDay = 'Sunday';

  bool selectAll = false;
  List<bool> isCheckedList = List.generate(6, (index) => false);
  final List<String> daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];
  final List<String> dynamicTexts = [
    'Fried',
    'Backed',
    'Deep Fry ',
    'Deep Fry',
    'Backed',
    'Fried',
  ];
  final List<String> foodname = [
    'Manchurian',
    'Bread',
    'Kabab',
    'Onion Pakoda',
    'Egg Puff',
    'cashew Pakoda',
  ];
  final List<String> catogaryname = [
    'Vegetarian',
    'Bakery',
    'Non-Veg',
    'Vegetarian',
    'Egg Dish',
    'Vegetarian',
  ];
  final List<String> cuisinename = [
    'North Indian',
    'North Indian',
    'South Indian',
    'North Indian',
    'North Indian',
    'South Indian',
  ];
  final List<String> displayname = [
    'Mancuri',
    'Bread',
    'Chicken Kabab',
    'Pakoda(Onion)',
    'Egg Puff',
    'Pakoda(Cashew)',
  ];
  final List<String> idname = [
    '00001',
    '00002',
    '00003',
    '00004',
    '00005',
    '00006',
  ];
  final List<String> subname = [
    'Vegan',
    'Non-Egg',
    'Halal',
    'Vegan',
    'Egg',
    'Vegan',
  ];
  final List<String> weights = [
    '150',
    '178',
    '180',
    '190',
    '165',
    '145',
  ];



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(
            label: Row(
              children: [
                Transform.scale(
                  scale: 0.8, // Adjust the scale factor to resize the checkboxes
                  child: Checkbox(
                    activeColor: Colors.amber,
                    value: isCheckedList.isNotEmpty && isCheckedList.every((value) => value),
                    onChanged: (bool? newValue) {
                      setState(() {
                        isCheckedList = List.generate(isCheckedList.length, (index) => newValue ?? false);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          DataColumn(label: Text('Name',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Available Time',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Cooked Type',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Category',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Cuisine',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Status',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Display Name',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('ID',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Sub Category',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Cuisine Discription',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Regional',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Raw Source',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Meal Type',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Budget Range',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Weight',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Avilable Count',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Avilable Days',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Total Amount',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft')),
            onSort: (int columnIndex, bool ascending) {
            },
          ),
        ],
        rows: List.generate(
          6,
              (index) {
            return DataRow(
              cells: [
                DataCell(
                  Transform.scale(
                    scale: 0.8, // Adjust the scale factor to resize the checkboxes
                    child: Checkbox(
                      value: isCheckedList[index],
                      activeColor: Colors.amber,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isCheckedList[index] = newValue ?? false;
                        });
                      },
                    ),
                  ),
                ),
                DataCell(Text(foodname[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),),),
                DataCell(
                  TimeRangeEditor(
                    startTime: selectedStartTimes[index],
                    endTime: selectedEndTimes[index],
                    onChanged: (newStartTime, newEndTime) {
                      setState(() {
                        selectedStartTimes[index] = newStartTime;
                        selectedEndTimes[index] = newEndTime;
                      });
                    },
                  ),
                ),
                DataCell(Text(dynamicTexts[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),),),
                DataCell(Text(catogaryname[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
                DataCell(Text(cuisinename[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
                DataCell(Icon(Icons.check_circle_outlined,color: Colors.green,size: 17.0,)),
                DataCell(Text(displayname[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
                DataCell(Text(idname[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
                DataCell(Text('Murg Makhani',style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
                DataCell(Text(subname[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
                DataCell(Text('Coastal\nKarnataka',style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
                DataCell(Text('Organic',style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
                DataCell(
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        TextField(
                          readOnly: true,
                          controller: TextEditingController(text: _selectedMealTypesList[index].join(", ")),
                          style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            hintText: "Breakfast",
                            hintStyle: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  contentPadding: EdgeInsets.zero, // Remove default padding
                                  content: Container(
                                    width: 200, // Set the desired width
                                    height: 370, // Set the desired height
                                    child: MultiSelectDialog<String>(
                                      items: ["Breakfast", "Lunch", "Snacks", "Dinner"]
                                          .map((mealType) => MultiSelectItem<String>(
                                        mealType,
                                        mealType,
                                      ))

                                          .toList(),
                                      initialValue: _selectedMealTypesList[index],
                                      onConfirm: (values) {
                                        setState(() {
                                          _selectedMealTypesList[index] = values;
                                        });
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                DataCell(
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        TextField(
                          readOnly: true,
                          controller: TextEditingController(text: _selectedBudgetList[index].join(", ")),
                          style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            hintText: "Luxury",
                            hintStyle: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                            border: InputBorder.none,
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  contentPadding: EdgeInsets.zero, // Remove default padding
                                  content: Container(
                                    width: 200, // Set the desired width
                                    height: 300, // Set the desired height
                                    child: MultiSelectDialog<String>(
                                      items: ["Luxury", "Premium", "Budget"]
                                          .map((mealType) => MultiSelectItem<String>(
                                        mealType,
                                        mealType,
                                      ))

                                          .toList(),
                                      initialValue: _selectedBudgetList[index],
                                      onConfirm: (values) {
                                        setState(() {
                                          _selectedBudgetList[index] = values;
                                        });
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                DataCell(Text(weights[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
                DataCell(
                  Row(
                    children: [
                      Text(
                        counts[index].toString(), // Display the count
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5.0), // Add spacing between count and icon
                      InkWell(
                        onTap: () {
                          int newCount = counts[index];

                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Edit Available Count for',style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins',fontWeight: FontWeight.bold),),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextFormField(
                                      initialValue: newCount.toString(),
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        newCount = int.tryParse(value) ?? newCount;
                                      },
                                    ),
                                  ],
                                ),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        counts[index] = newCount;
                                      });
                                      Navigator.of(context).pop(); // Close the dialog box
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Available Count for updated.'),
                                          duration: Duration(seconds: 2),
                                        ),
                                      );
                                    },
                                    child: Text('Save',style: TextStyle(color: Colors.white,fontSize: 13,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.amber, // Set the background color to amber
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Icon(Icons.edit, color: Colors.blue, size: 14),
                      ),
                    ],
                  ),
                ),
                DataCell(
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            contentPadding: EdgeInsets.zero,
                            content: Container(
                              width: 200,
                              child: MultiSelectDialog<String>(
                                items: [
                                  'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
                                ].map((day) {
                                  return MultiSelectItem<String>(day, day);
                                }).toList(),
                                initialValue: _selectedDaysList[index],
                                onConfirm: (values) {
                                  setState(() {
                                    _selectedDaysList[index] = values;
                                  });
                                },
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today, color: Colors.amber, size: 18),
                        SizedBox(width: 4),
                        Wrap(
                          children: _selectedDaysList[index].map((day) {
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                day,
                                style: TextStyle(color: Colors.black, fontSize: 11, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                              ),

                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                DataCell(
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          int newOnDemandAmount = onDemandAmounts[index];
                          int newPreOrderAmount = preOrderAmounts[index];
                          int newScheduledAmount = scheduledAmounts[index];
                          return AlertDialog(
                            title: Text('Edit Amounts', style: TextStyle(color: Colors.black, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Text('On Demand Amount:', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                TextFormField(
                                  initialValue: onDemandAmounts[index].toString(),
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    setState(() {
                                      onDemandAmounts[index] = int.tryParse(value) ?? onDemandAmounts[index];
                                    });
                                  },
                                ),
                                Row(
                                  children: [
                                    Text('Pre Order Amount:', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                TextFormField(
                                  initialValue: preOrderAmounts[index].toString(),
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    setState(() {
                                      preOrderAmounts[index] = int.tryParse(value) ?? preOrderAmounts[index];
                                    });
                                  },
                                ),
                                Row(
                                  children: [
                                    Text('Scheduled Amount:', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                TextFormField(
                                  initialValue: scheduledAmounts[index].toString(),
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    setState(() {
                                      scheduledAmounts[index] = int.tryParse(value) ?? scheduledAmounts[index];
                                    });
                                  },
                                ),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Close the dialog box
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Amounts updated.'),
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
                                },
                                child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                                style: ElevatedButton.styleFrom(primary: Colors.amber),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Dem: ${onDemandAmounts[index]}\nPre : ${preOrderAmounts[index]}\nSche: ${scheduledAmounts[index]}', style: TextStyle(color: Colors.black, fontSize: 11, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


class TimeRangeEditor extends StatefulWidget {
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final Function(TimeOfDay newStartTime, TimeOfDay newEndTime) onChanged;

  TimeRangeEditor({
    required this.startTime,
    required this.endTime,
    required this.onChanged,
  });

  @override
  _TimeRangeEditorState createState() => _TimeRangeEditorState();
}

class _TimeRangeEditorState extends State<TimeRangeEditor> {
  late TimeOfDay selectedStartTime;
  late TimeOfDay selectedEndTime;

  @override
  void initState() {
    selectedStartTime = widget.startTime;
    selectedEndTime = widget.endTime;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectTime(context);
      },
      child: Text(
        '${selectedStartTime.format(context)} - ${selectedEndTime.format(context)}',
        style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
      ),
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? newStartTime = await showTimePicker(
      context: context,
      initialTime: selectedStartTime,
    );

    if (newStartTime != null) {
      final TimeOfDay? newEndTime = await showTimePicker(
        context: context,
        initialTime: selectedEndTime,
      );

      if (newEndTime != null) {
        setState(() {
          selectedStartTime = newStartTime;
          selectedEndTime = newEndTime;
        });
        widget.onChanged(selectedStartTime, selectedEndTime);
      }
    }
  }
}


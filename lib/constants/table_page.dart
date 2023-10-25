import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';


class TablePages extends StatefulWidget {
  const TablePages({Key? key}) : super(key: key);


  @override
  State<TablePages> createState() => _TablePagesState();
}

class _TablePagesState extends State<TablePages> {
  List<TimeOfDay> selectedStartTimes = List.generate(6, (index) => TimeOfDay.now());
  List<TimeOfDay> selectedEndTimes = List.generate(6, (index) => TimeOfDay.now());
  List<int> onDemandAmounts = List.generate(6, (index) => 0);
  List<int> preOrderAmounts = List.generate(6, (index) => 0);
  List<int> scheduledAmounts = List.generate(6, (index) => 0);
  List<List<String>> _selectedMealTypesList = List.generate(6, (index) => []);
  List<List<String>> _selectedBudgetList = List.generate(6, (index) => []);
  List<String> numberValues = List.generate(6, (index) => "1000");
  List<String> number1Values = List.generate(6, (index) => "200");
  List<String> number2Values = List.generate(6, (index) => "300");
  List<List<String>> number = List.generate(6, (index) => []);
  List<String> number1 = List.generate(6, (index) => "5day");
  List<String> number2 = List.generate(6, (index) => "6day");
  List<String> number3 = List.generate(6, (index) => "7day");

  TextEditingController numberController = TextEditingController();
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
  List<String> daysList = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];
  List<String> breakfastTimings = List.generate(6, (index) => "Breakfast");
  List<TimeOfDay> selectedBreakfastStartTimes = List.generate(6, (index) => TimeOfDay.now());
  List<TimeOfDay> selectedBreakfastEndTimes = List.generate(6, (index) => TimeOfDay.now());
  List<String> lunchTimings = List.generate(6, (index) => "Lunch");
  List<TimeOfDay> selectedLunchStartTimes = List.generate(6, (index) => TimeOfDay.now());
  List<TimeOfDay> selectedLunchEndTimes = List.generate(6, (index) => TimeOfDay.now());
  List<String> snackTimings = List.generate(6, (index) => "Snacks");
  List<TimeOfDay> selectedSnackStartTimes = List.generate(6, (index) => TimeOfDay.now());
  List<TimeOfDay> selectedSnackEndTimes = List.generate(6, (index) => TimeOfDay.now());
  List<String> dinnerTimings = List.generate(6, (index) => "Dinner");
  List<TimeOfDay> selectedDinnerStartTimes = List.generate(6, (index) => TimeOfDay.now());
  List<TimeOfDay> selectedDinnerEndTimes = List.generate(6, (index) => TimeOfDay.now());

  void dispose() {
    numberController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        dataRowHeight: 60.0,
        columns: [
          DataColumn(label: Text('Name',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Count',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Schedule',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Session',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
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
          DataColumn(label: Text('Budget Range',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
          DataColumn(label: Text('Weight',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
        ],
        rows: List.generate(
          6,
              (index) {
            return DataRow(
              cells: [
                DataCell(Text(foodname[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),),),
                DataCell(
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            padding: EdgeInsets.only(left: 0.0,top: 2.0),
                            height: 20.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child:  FittedBox(
                              fit: BoxFit.scaleDown,
                              child: TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Edit Counts'),
                                        content: TextFormField(
                                          controller: numberController,
                                          keyboardType: TextInputType.number,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                numberValues[index] = numberController.text;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                                            style: ElevatedButton.styleFrom(primary: Colors.amber),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  numberController.text = numberValues[index]; // Initialize the text field with the current number
                                },
                                child: Text(
                                  numberValues[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 0.0),
                            padding: EdgeInsets.only(left: 1.0,top: 2.0),
                            height: 20.0,
                            width: 28.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child:  FittedBox(
                              fit: BoxFit.scaleDown,
                              child: TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Edit Pre-Order Count'),
                                        content: TextFormField(
                                          controller: numberController,
                                          keyboardType: TextInputType.number,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                number1Values[index] = numberController.text;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                                            style: ElevatedButton.styleFrom(primary: Colors.amber),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  numberController.text = number1Values[index]; // Initialize the text field with the current number
                                },
                                child: Text(
                                  number1Values[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                            padding: EdgeInsets.only(left: 1.0,top: 2.0),
                            height: 20.0,
                            width: 28.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Edit Scheduled Count'),
                                        content: TextFormField(
                                          controller: numberController,
                                          keyboardType: TextInputType.number,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                number2Values[index] = numberController.text;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                                            style: ElevatedButton.styleFrom(primary: Colors.amber),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  numberController.text = number2Values[index]; // Initialize the text field with the current number
                                },
                                child: Text(
                                  number2Values[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                ),
                DataCell(
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            padding: EdgeInsets.only(left: 0.0, top: 2.0),
                            height: 20.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        height: 50.0,
                                        width: 80.0,
                                        child: MultiSelectDialog<String>(
                                          items: daysOfWeek
                                              .map((day) => MultiSelectItem<String>(day, day))
                                              .toList(),
                                          initialValue: number[index].map((e) => e.toString()).toList(),
                                          onConfirm: (values) {
                                            setState(() {
                                              number[index] = values;
                                            });
                                          },
                                          height: 250.0, // Set the maximum height
                                          width: 110.0,  // Set the maximum width
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  number[index].isEmpty ? "Custom" : number[index].join(", "),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 0.0),
                            padding: EdgeInsets.only(left: 1.0,top: 2.0),
                            height: 20.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child:  FittedBox(
                              fit: BoxFit.scaleDown,
                              child: TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Edit Counts'),
                                        content: TextFormField(
                                          controller: numberController,
                                          keyboardType: TextInputType.number,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                number1[index] = numberController.text;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                                            style: ElevatedButton.styleFrom(primary: Colors.amber),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  numberController.text = number1[index]; // Initialize the text field with the current number
                                },
                                child: Text(
                                  number1[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                            padding: EdgeInsets.only(left: 1.0,top: 2.0),
                            height: 20.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Edit Counts'),
                                        content: TextFormField(
                                          controller: numberController,
                                          keyboardType: TextInputType.number,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                number2[index] = numberController.text;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                                            style: ElevatedButton.styleFrom(primary: Colors.amber),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  numberController.text = number2[index]; // Initialize the text field with the current number
                                },
                                child: Text(
                                  number2[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                            padding: EdgeInsets.only(left: 1.0,top: 2.0),
                            height: 20.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child:  FittedBox(
                              fit: BoxFit.scaleDown,
                              child: TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text('Edit Counts'),
                                        content: TextFormField(
                                          controller: numberController,
                                          keyboardType: TextInputType.number,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                number3[index] = numberController.text;
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Save', style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
                                            style: ElevatedButton.styleFrom(primary: Colors.amber),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  numberController.text = number3[index]; // Initialize the text field with the current number
                                },
                                child: Text(
                                  number3[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                ),
                DataCell(
                  Column(
                    children: [
                      Row(
                        children: [

                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            padding: EdgeInsets.only(left: 7.0, top: 1.0),
                            height: 20.0,
                            width: 110.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Select Breakfast Timings"),
                                      content: StatefulBuilder(
                                        builder: (BuildContext context, StateSetter setState) {
                                          int index = 0; // Set your desired index here
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Start Time:"),
                                                  TextButton(
                                                    onPressed: () {
                                                      showTimePicker(
                                                        context: context,
                                                        initialTime: selectedBreakfastStartTimes[index],
                                                      ).then((newTime) {
                                                        if (newTime != null) {
                                                          setState(() {
                                                            selectedBreakfastStartTimes[index] = newTime;
                                                          });
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      selectedBreakfastStartTimes[index].format(context),
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("End Time:"),
                                                  TextButton(
                                                    onPressed: () {
                                                      showTimePicker(
                                                        context: context,
                                                        initialTime: selectedBreakfastEndTimes[index],
                                                      ).then((newTime) {
                                                        if (newTime != null) {
                                                          setState(() {
                                                            selectedBreakfastEndTimes[index] = newTime;
                                                          });
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      selectedBreakfastEndTimes[index].format(context),
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (selectedBreakfastStartTimes[index] != null &&
                                                  selectedBreakfastEndTimes[index] != null) {
                                                breakfastTimings[index] =
                                                "${selectedBreakfastStartTimes[index].format(context)} - ${selectedBreakfastEndTimes[index].format(context)}";
                                              }
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Save', style: TextStyle(color: Colors.white)),
                                          style: ElevatedButton.styleFrom(primary: Colors.amber),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text(
                                breakfastTimings[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 5.0,),
                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            padding: EdgeInsets.only(left: 7.0, top: 1.0),
                            height: 20.0,
                            width: 110.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Select Lunch Timings"),
                                      content: StatefulBuilder(
                                        builder: (BuildContext context, StateSetter setState) {
                                          int index = 0; // Set your desired index here
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Start Time:"),
                                                  TextButton(
                                                    onPressed: () {
                                                      showTimePicker(
                                                        context: context,
                                                        initialTime: selectedLunchStartTimes[index],
                                                      ).then((newTime) {
                                                        if (newTime != null) {
                                                          setState(() {
                                                            selectedLunchStartTimes[index] = newTime;
                                                          });
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      selectedLunchStartTimes[index].format(context),
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("End Time:"),
                                                  TextButton(
                                                    onPressed: () {
                                                      showTimePicker(
                                                        context: context,
                                                        initialTime: selectedLunchEndTimes[index],
                                                      ).then((newTime) {
                                                        if (newTime != null) {
                                                          setState(() {
                                                            selectedLunchEndTimes[index] = newTime;
                                                          });
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      selectedLunchEndTimes[index].format(context),
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (selectedLunchStartTimes[index] != null &&
                                                  selectedLunchEndTimes[index] != null) {
                                                lunchTimings[index] =
                                                "${selectedLunchStartTimes[index].format(context)} - ${selectedLunchEndTimes[index].format(context)}";
                                              }
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Save', style: TextStyle(color: Colors.white)),
                                          style: ElevatedButton.styleFrom(primary: Colors.amber),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text(
                                lunchTimings[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 5.0,),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            padding: EdgeInsets.only(left: 7.0, top: 1.0),
                            height: 20.0,
                            width: 110.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Select Snacks Timings"),
                                      content: StatefulBuilder(
                                        builder: (BuildContext context, StateSetter setState) {
                                          int index = 0; // Set your desired index here
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Start Time:"),
                                                  TextButton(
                                                    onPressed: () {
                                                      showTimePicker(
                                                        context: context,
                                                        initialTime: selectedSnackStartTimes[index],
                                                      ).then((newTime) {
                                                        if (newTime != null) {
                                                          setState(() {
                                                            selectedSnackStartTimes[index] = newTime;
                                                          });
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      selectedSnackStartTimes[index].format(context),
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("End Time:"),
                                                  TextButton(
                                                    onPressed: () {
                                                      showTimePicker(
                                                        context: context,
                                                        initialTime: selectedSnackEndTimes[index],
                                                      ).then((newTime) {
                                                        if (newTime != null) {
                                                          setState(() {
                                                            selectedSnackEndTimes[index] = newTime;
                                                          });
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      selectedSnackEndTimes[index].format(context),
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (selectedSnackStartTimes[index] != null &&
                                                  selectedSnackEndTimes[index] != null) {
                                                snackTimings[index] =
                                                "${selectedSnackStartTimes[index].format(context)} - ${selectedSnackEndTimes[index].format(context)}";
                                              }
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Save', style: TextStyle(color: Colors.white)),
                                          style: ElevatedButton.styleFrom(primary: Colors.amber),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text(
                                snackTimings[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 5.0,),
                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            padding: EdgeInsets.only(left: 7.0, top: 1.0),
                            height: 20.0,
                            width: 110.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Select Dinner Timings"),
                                      content: StatefulBuilder(
                                        builder: (BuildContext context, StateSetter setState) {
                                          int index = 0; // Set your desired index here
                                          return Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Start Time:"),
                                                  TextButton(
                                                    onPressed: () {
                                                      showTimePicker(
                                                        context: context,
                                                        initialTime: selectedDinnerStartTimes[index],
                                                      ).then((newTime) {
                                                        if (newTime != null) {
                                                          setState(() {
                                                            selectedDinnerStartTimes[index] = newTime;
                                                          });
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      selectedDinnerStartTimes[index].format(context),
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("End Time:"),
                                                  TextButton(
                                                    onPressed: () {
                                                      showTimePicker(
                                                        context: context,
                                                        initialTime: selectedDinnerEndTimes[index],
                                                      ).then((newTime) {
                                                        if (newTime != null) {
                                                          setState(() {
                                                            selectedDinnerEndTimes[index] = newTime;
                                                          });
                                                        }
                                                      });
                                                    },
                                                    child: Text(
                                                      selectedDinnerEndTimes[index].format(context),
                                                      style: TextStyle(
                                                        color: Colors.amber,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (selectedDinnerStartTimes[index] != null &&
                                                  selectedDinnerEndTimes[index] != null) {
                                                dinnerTimings[index] =
                                                "${selectedDinnerStartTimes[index].format(context)} - ${selectedDinnerEndTimes[index].format(context)}";
                                              }
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Save', style: TextStyle(color: Colors.white)),
                                          style: ElevatedButton.styleFrom(primary: Colors.amber),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text(
                                dinnerTimings[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )

                        ],
                      )
                    ],
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
              ],
            );
          },
        ),
      ),
    );
  }
}
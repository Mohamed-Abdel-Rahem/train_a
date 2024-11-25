import 'package:flutter/material.dart';
import 'package:train_a/data/courses.dart';
import 'package:train_a/model/course.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Course? selectedCourse = null;
  Set<Course> selectedCourses = {};
  double _totalCost = 0;
  // bool sort = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
                children: courses
                    .map((e) => RadioListTile<Course>(
                        title: Text(e.courrseName),
                        value: e,
                        groupValue: selectedCourse,
                        onChanged: (value) {
                          setState(() {
                            selectedCourse = value;
                          });
                        }))
                    .toList()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedCourses.add(selectedCourse!);
                  _totalCost += selectedCourse!.coursePrice;
                });
              },
              child: Text(
                'Pay Course',
              ),
            ),
            DataTable(
                // sortAscending: sort,
                // sortColumnIndex: 1,
                columns: [
                  DataColumn(
                    label: Text(
                      'Name',
                    ),
                  ),
                  DataColumn(
                    // onSort:(columnIndex, ascending){
                    //   setState(() {
                    //      sort = !sort;
                    //   });
                    // },
                    label: Text(
                      'Price',
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Duration',
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Delete',
                    ),
                  ),
                ],
                rows: selectedCourses
                    .map(
                      (e) => DataRow(
                        cells: [
                          DataCell(
                            Text(
                              e.courrseName,
                            ),
                          ),
                          DataCell(
                            Text(
                              e.coursePrice.toString(),
                            ),
                          ),
                          DataCell(
                            Text(
                              e.duration.toString(),
                            ),
                          ),
                          DataCell(IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              setState(() {
                                selectedCourses
                                    .remove(selectedCourses.remove(e));
                                _totalCost -= e.coursePrice;
                              });
                            },
                          )),
                        ],
                      ),
                    )
                    .toList()),
            SizedBox(
              height: 8,
            ),
            Divider(),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cost : ',
                  ),
                  Text(
                    '$_totalCost LE',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

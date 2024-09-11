import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/admaneger/baneer_adds/banner_adds.dart';

class GPACalculatorMultipleCoursesScreen extends StatefulWidget {
  static const String routeName = 'GPACalculatorMultipleCoursesScreen';

  @override
  _GPACalculatorMultipleCoursesScreenState createState() => _GPACalculatorMultipleCoursesScreenState();
}

class _GPACalculatorMultipleCoursesScreenState extends State<GPACalculatorMultipleCoursesScreen> {
  final List<Map<String, dynamic>> _courses = [];
  final TextEditingController _courseNameController = TextEditingController();
  final TextEditingController _hoursController = TextEditingController();
  final TextEditingController _gradeController = TextEditingController();
  final TextEditingController _prevGPAController = TextEditingController();
  final TextEditingController _prevHoursController = TextEditingController();
  final TextEditingController _retakeHoursController = TextEditingController();
  String? _selectedPrevGrade;

  double? _prevGPA;
  double? _prevHours;

  final List<Map<String, dynamic>> _grades = [
    {'label': 'A+ (4.0)', 'value': 'A+'},
    {'label': 'A (3.75)', 'value': 'A'},
    {'label': 'A- (3.50)', 'value': 'A-'},
    {'label': 'B+ (3.25)', 'value': 'B+'},
    {'label': 'B (3.0)', 'value': 'B'},
    {'label': 'B- (2.75)', 'value': 'B-'},
    {'label': 'C+ (2.50)', 'value': 'C+'},
    {'label': 'C (2.25)', 'value': 'C'},
    {'label': 'C- (2.0)', 'value': 'C-'},
    {'label': 'D+ (1.75)', 'value': 'D+'},
    {'label': 'D (1.5)', 'value': 'D'},
    {'label': 'F (0.0)', 'value': 'F'},
  ];

  final Map<String, double> _gradeValues = {
    'A+': 4.0,
    'A': 3.75,
    'A-': 3.50,
    'B+': 3.25,
    'B': 3.0,
    'B-': 2.75,
    'C+': 2.50,
    'C': 2.25,
    'C-': 2.0,
    'D+': 1.75,
    'D': 1.5,
    'F': 0.0,
  };

  double _semesterGPA = 0.0;
  double? _cumulativeGPA;

  void _addCourse() {
    final courseName = _courseNameController.text;
    final hours = double.tryParse(_hoursController.text) ?? 0.0;
    final grade = _gradeController.text;
    final retakeHours = double.tryParse(_retakeHoursController.text) ?? 0.0;
    final prevGrade = _selectedPrevGrade;

    if (courseName.isNotEmpty && hours > 0 && grade.isNotEmpty) {
      _courses.add({
        'name': courseName,
        'hours': hours,
        'grade': grade,
        'prevGPA': _prevGPA,
        'prevHours': _prevHours,
        'retakeHours': retakeHours,
        'prevGrade': prevGrade,
      });
      _courseNameController.clear();
      _hoursController.clear();
      _gradeController.clear();
      _retakeHoursController.clear();
      setState(() {
        _selectedPrevGrade = null;
      });
    }
  }

  void _calculateGPA() {
    double totalSemesterPoints = 0.0;
    double totalSemesterHours = 0.0;
    double totalPreviousPoints = 0.0;
    double totalRetakePoints = 0.0;

    double totalPreviousHours = _prevHours ?? 0.0;
    double totalPreviousGPA = _prevGPA ?? 0.0;
    double totalRetakeHours = 0.0;

    for (var course in _courses) {
      final gradePoint = _gradeValues[course['grade']] ?? 0.0;
      final courseHours = course['hours'];
      final retakeHours = course['retakeHours'];
      final prevGradePoint = _gradeValues[course['prevGrade']] ?? 0.0;

      final coursePoints = gradePoint * courseHours;
      totalSemesterPoints += coursePoints;
      totalSemesterHours += courseHours;

      totalRetakeHours += retakeHours;
      final retakePoints = (prevGradePoint - gradePoint) * retakeHours;
      totalRetakePoints += retakePoints;
    }

    final semesterGPA = totalSemesterHours > 0 ? totalSemesterPoints / totalSemesterHours : 0.0;

    if (totalPreviousHours > 0) {
      totalPreviousPoints = totalPreviousGPA * totalPreviousHours;
    }

    final cumulativeGPA = totalSemesterHours > 0
        ? (totalSemesterPoints + totalPreviousPoints - totalRetakePoints) /
        (totalSemesterHours + totalPreviousHours)
        : 0.0;

    setState(() {
      _semesterGPA = semesterGPA;
      _cumulativeGPA = cumulativeGPA;
    });
  }

  void _removeCourse(int index) {
    setState(() {
      _courses.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حساب المعدل GPA - عدة مواد',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: ListView(
          children: [
            SizedBox(height: 1.h),
             BannerAds(),
            SizedBox(height: 2.h),
            TextField(
              controller: _courseNameController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'اسم المادة',
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            TextField(
              controller: _hoursController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'عدد الساعات',
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 2.h),
            DropdownButton<String>(
              value: _gradeController.text.isNotEmpty ? _gradeController.text : null,
              hint: const Text('اختر التقدير', style: TextStyle(color: Colors.white)),
              items: _grades.map((grade) {
                return DropdownMenuItem<String>(
                  value: grade['value'],
                  child: Text(grade['label']),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _gradeController.text = value ?? '';
                });
              },
              dropdownColor: Colors.blueGrey[800],
              style: const TextStyle(color: Colors.white),
            ),
            SizedBox(height: 2.h),
            DropdownButton<String>(
              value: _selectedPrevGrade,
              hint: const Text('اختر التقدير السابق', style: TextStyle(color: Colors.white)),
              items: _grades.map((grade) {
                return DropdownMenuItem<String>(
                  value: grade['value'],
                  child: Text(grade['label']),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedPrevGrade = value;
                });
              },
              dropdownColor: Colors.blueGrey[800],
              style: const TextStyle(color: Colors.white),
            ),
            SizedBox(height: 2.h),
            TextField(
              controller: _prevGPAController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'المعدل التراكمي السابق',
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _prevGPA = double.tryParse(value);
                });
              },
            ),
            SizedBox(height: 2.h),
            TextField(
              controller: _prevHoursController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'عدد الساعات السابقة',
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _prevHours = double.tryParse(value);
                });
              },
            ),
            SizedBox(height: 2.h),
            TextField(
              controller: _retakeHoursController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'عدد الساعات المعادة',
                labelStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 2.h),
            ElevatedButton(
              onPressed: _addCourse,
              child: const Text('إضافة مادة'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 2.h),
            ElevatedButton(
              onPressed: _calculateGPA,
              child: const Text('حساب المعدل'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 4.h),
            ..._courses.asMap().entries.map((entry) {
              final index = entry.key;
              final course = entry.value;
              return ListTile(
                title: Text(
                  course['name'],
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'ساعات: ${course['hours']}, تقدير: ${course['grade']}, تقدير سابق: ${course['prevGrade']}',
                  style: const TextStyle(color: Colors.white),
                ),
                tileColor: Colors.blueGrey[800],
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _removeCourse(index),
                ),
              );
            }).toList(),
            SizedBox(height: 4.h),
            Text(
              'المعدل الفصلي: ${_semesterGPA.toStringAsFixed(2)}',
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
            Text(
              'المعدل التراكمي: ${_cumulativeGPA?.toStringAsFixed(2) ?? 'غير محدد'}',
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }
}

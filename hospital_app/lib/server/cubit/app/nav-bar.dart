import 'package:flutter/material.dart';

import '../../../core/colors/custom-color.dart';

class NavvBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NavBarState();
}

class _NavBarState extends State<NavvBar> {
  int _currentIndex = 0; // Chỉ số của tab hiện tại

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Nội dung của trang chính
        child: Column(
          children: <Widget>[
            // ... Phần nội dung của trang chính ...
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar( // Đây là phần Bottom Navigation Bar
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index; // Cập nhật chỉ số của tab hiện tại khi người dùng nhấn
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chính',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Tìm kiếm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Yêu thích',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Cá nhân',
          ),
        ],
      ),
    );
  }

  Widget buildDepartmentChip(String departmentName) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      child: Chip(
        label: Text(departmentName),
        backgroundColor: Colors.blue,
        labelStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget buildDepartmentButton({
    required String departmentName,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: CustomColor.primaryColor,
            foregroundColor: Colors.white,
            minimumSize: const Size(100, 100),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          departmentName,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

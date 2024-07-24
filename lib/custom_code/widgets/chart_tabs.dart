// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ChartTabs extends StatefulWidget {
  const ChartTabs({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<ChartTabs> createState() => _ChartTabsState();
}

class _ChartTabsState extends State<ChartTabs> {
  String selectedTab = 'Week';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTab("Week", isLeft: true),
          _buildTab("Month"),
          _buildTab("Quarter"),
          _buildTab("Year", isRight: true),
        ],
      ),
    );
  }

  Widget _buildTab(String text, {bool isLeft = false, bool isRight = false}) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        hoveredTab = text;
      }),
      onExit: (event) => setState(() {
        hoveredTab = '';
      }),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: selectedTab == text || hoveredTab == text
              ? Color(0xFF191919)
              : Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isLeft ? 10.0 : 0),
            bottomLeft: Radius.circular(isLeft ? 10.0 : 0),
            topRight: Radius.circular(isRight ? 10.0 : 0),
            bottomRight: Radius.circular(isRight ? 10.0 : 0),
          ),
          border: Border.all(color: Color(0xFF202020), width: 1.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFFCECECE),
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  String hoveredTab = '';
}

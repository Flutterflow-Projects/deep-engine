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
    required this.activeTextColor,
    required this.activeTabBg,
    required this.textColor,
    required this.borderColor,
  });

  final double? width;
  final double? height;
  final Color activeTextColor;
  final Color activeTabBg;
  final Color textColor;
  final Color borderColor;

  @override
  State<ChartTabs> createState() => _ChartTabsState();
}

class _ChartTabsState extends State<ChartTabs> {
  String selectedTab = 'Week';
  String hoveredTab = '';

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
      child: GestureDetector(
        onTap: () => setState(() {
          selectedTab = text;
        }),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          decoration: BoxDecoration(
            color: selectedTab == text || hoveredTab == text
                ? widget.activeTabBg
                : Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isLeft ? 10.0 : 0),
              bottomLeft: Radius.circular(isLeft ? 10.0 : 0),
              topRight: Radius.circular(isRight ? 10.0 : 0),
              bottomRight: Radius.circular(isRight ? 10.0 : 0),
            ),
            border: Border.all(color: widget.borderColor, width: 1.0),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: selectedTab == text || hoveredTab == text
                  ? widget.activeTextColor
                  : widget.textColor,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}

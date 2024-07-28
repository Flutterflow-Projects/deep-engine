// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final List<Map<String, String>> users = [
    {'name': 'Phoenix Baker', 'username': 'phoenix'},
    {'name': 'Olivia Rhyc', 'username': 'olivia'},
    {'name': 'Lana Steiner', 'username': 'lana'},
    {'name': 'Demi Wilkinson', 'username': 'demi'},
    {'name': 'Natali Craig', 'username': 'natali'},
    {'name': 'Drew Cano', 'username': 'cano'},
  ];

  List<Map<String, String>> filteredUsers = [];
  bool showDropdown = false;
  String query = '';

  @override
  void initState() {
    super.initState();
    filteredUsers = users;
  }

  void filterUsers(String query) {
    setState(() {
      filteredUsers = users.where((user) {
        final nameLower = user['name']!.toLowerCase();
        final usernameLower = user['username']!.toLowerCase();
        final searchLower = query.toLowerCase();

        return nameLower.contains(searchLower) ||
            usernameLower.contains(searchLower);
      }).toList();
    });
  }

  void hideDropdown() {
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        showDropdown = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        setState(() {
          showDropdown = false;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        child: Column(
          children: [
            TextField(
              onTap: () {
                setState(() {
                  showDropdown = true;
                });
              },
              onChanged: (value) {
                filterUsers(value);
              },
              decoration: InputDecoration(
                hintText: 'Type in a keyword',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF202020)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF202020)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            if (showDropdown)
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: widget.width,
                  constraints: BoxConstraints(maxHeight: 200),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Color(0xFF202020)),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: filteredUsers.length,
                    itemBuilder: (context, index) {
                      final user = filteredUsers[index];
                      return ListTile(
                        onTap: () {
                          setState(() {
                            query = user['name']!;
                            showDropdown = false;
                          });
                        },
                        title: Text(
                          user['name']!,
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          '@${user['username']}',
                          style: TextStyle(color: Colors.grey),
                        ),
                        hoverColor: Color(0xFF191919),
                      );
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

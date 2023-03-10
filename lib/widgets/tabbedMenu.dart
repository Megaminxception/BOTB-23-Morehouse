// Tabbed Menu Widget

import 'package:flutter/material.dart';

class TabbedMenu extends StatefulWidget {
  int selectedIndex;
  TabbedMenu({super.key, required this.selectedIndex});

  @override
  State<TabbedMenu> createState() => _TabbedMenuState();
}

class _TabbedMenuState extends State<TabbedMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).focusColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Text Buttons for each tab, the button is underlined when selected
          TextButton(
            onPressed: () {
              setState(() {});
            },
            child: Text(
              'Games',
              style: TextStyle(
                decoration: widget.selectedIndex == 0
                    ? TextDecoration.underline
                    : TextDecoration.none,
                color: widget.selectedIndex == 0
                    ? Theme.of(context).secondaryHeaderColor
                    : Theme.of(context).hintColor,
                fontWeight: widget.selectedIndex == 0
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {});
            },
            child: Text(
              'Shows',
              style: TextStyle(
                decoration: widget.selectedIndex == 1
                    ? TextDecoration.underline
                    : TextDecoration.none,
                color: widget.selectedIndex == 1
                    ? Theme.of(context).secondaryHeaderColor
                    : Theme.of(context).hintColor,
                fontWeight: widget.selectedIndex == 1
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                widget.selectedIndex = 2;
              });
            },
            child: Text(
              'Chat',
              style: TextStyle(
                decoration: widget.selectedIndex == 2
                    ? TextDecoration.underline
                    : TextDecoration.none,
                color: widget.selectedIndex == 2
                    ? Theme.of(context).secondaryHeaderColor
                    : Theme.of(context).hintColor,
                fontWeight: widget.selectedIndex == 2
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                widget.selectedIndex = 3;
              });
            },
            child: Text(
              'Sideline',
              style: TextStyle(
                decoration: widget.selectedIndex == 3
                    ? TextDecoration.underline
                    : TextDecoration.none,
                color: widget.selectedIndex == 3
                    ? Theme.of(context).secondaryHeaderColor
                    : Theme.of(context).hintColor,
                fontWeight: widget.selectedIndex == 3
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

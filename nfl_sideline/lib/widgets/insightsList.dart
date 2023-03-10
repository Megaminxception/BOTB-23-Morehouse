import 'package:flutter/material.dart';

class InsightsList extends StatefulWidget {
  const InsightsList({super.key});

  @override
  State<InsightsList> createState() => _InsightsListState();
}

class _InsightsListState extends State<InsightsList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 10,
          shadowColor: Theme.of(context).secondaryHeaderColor,
          child: ListTile(
            trailing: const Padding(
              padding: EdgeInsets.only(right: 5),
            ),
            tileColor: Theme.of(context).focusColor,
            contentPadding: const EdgeInsets.all(10),
            title: const Text("I-Formation",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            subtitle: const Text(
                "I-formation is a formation where the quarterback lines up directly behind the center, and the running back lines up directly behind the quarterback. There are two additional...",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 10,
          shadowColor: Theme.of(context).secondaryHeaderColor,
          child: ListTile(
            trailing: const Padding(
              padding: EdgeInsets.only(right: 5),
            ),
            tileColor: Theme.of(context).focusColor,
            contentPadding: const EdgeInsets.all(10),
            title: const Text("Onside Kick",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            subtitle: const Text(
                "An onside kick in the NFL is a type of kickoff where the kicking team intentionally kicks the ball only a short distance in an attempt to immediately regain...",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 10,
          shadowColor: Theme.of(context).secondaryHeaderColor,
          child: ListTile(
            trailing: const Padding(
              padding: EdgeInsets.only(right: 5),
            ),
            tileColor: Theme.of(context).focusColor,
            contentPadding: const EdgeInsets.all(10),
            title: const Text("Dime",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            subtitle: const Text(
                "In American football, a \"dime\" refers to a defensive package that entails six defensive backs, usually comprising four cornerbacks and two safeties...",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class VoiceAssistant extends StatefulWidget {
  const VoiceAssistant({super.key});

  @override
  State<VoiceAssistant> createState() => _VoiceAssistantState();
}

class _VoiceAssistantState extends State<VoiceAssistant> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(padding: EdgeInsets.all(10)),
      Image.asset('assets/images/Voice_Ai.png'),
      const Text(
        "Ask me about why Quarterbacks slide...",
        style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
      ),
    ]);
  }
}

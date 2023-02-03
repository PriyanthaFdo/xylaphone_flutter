import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound({required int noteNumber}) {
    Audio.load('assets/note$noteNumber.wav')
      ..play()
      ..dispose();
  }

  Expanded makeButton(
      {required int buttonNoteNumber, required Color buttonColor}) {
    return Expanded(
      child: Container(
        width: 100,
        height: 50,
        color: buttonColor,
        child: TextButton(
          onPressed: () {
            playSound(noteNumber: buttonNoteNumber);
          },
          child: const SizedBox(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              makeButton(buttonNoteNumber: 1, buttonColor: Colors.red),
              makeButton(buttonNoteNumber: 2, buttonColor: Colors.orange),
              makeButton(buttonNoteNumber: 3, buttonColor: Colors.yellow),
              makeButton(buttonNoteNumber: 4, buttonColor: Colors.green),
              makeButton(buttonNoteNumber: 5, buttonColor: Colors.teal),
              makeButton(buttonNoteNumber: 6, buttonColor: Colors.blue),
              makeButton(buttonNoteNumber: 7, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

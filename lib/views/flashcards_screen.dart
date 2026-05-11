import 'package:flutter/material.dart';

class FlashcardsScreen extends StatefulWidget {
  const FlashcardsScreen({Key? key}) : super(key: key);

  @override
  State<FlashcardsScreen> createState() => _FlashcardsScreenState();
}

class _FlashcardsScreenState extends State<FlashcardsScreen> {
  bool _showAnswer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flashcards: Formulas')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _showAnswer = !_showAnswer;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: _showAnswer ? Theme.of(context).primaryColor : Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))],
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            child: Text(
              _showAnswer 
                  ? 'P(A) = (Number of favorable outcomes) / (Total outcomes)'
                  : 'What is the formula for Classical Probability?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _showAnswer ? Colors.white : Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Previous')),
            ElevatedButton(onPressed: () {}, child: const Text('Next')),
          ],
        ),
      ),
    );
  }
}

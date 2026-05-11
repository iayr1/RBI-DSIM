import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Mock Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Question 1 of 10', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey)),
            const SizedBox(height: 16),
            Text(
              'Which theorem states that the sample mean approximates a normal distribution as sample size increases?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 24),
            _buildOption(context, 'A. Bayes Theorem'),
            _buildOption(context, 'B. Central Limit Theorem', isCorrect: true),
            _buildOption(context, 'C. Law of Large Numbers'),
            _buildOption(context, 'D. Chebyshev Inequality'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Next Question'),
        icon: const Icon(Icons.arrow_forward),
      ),
    );
  }

  Widget _buildOption(BuildContext context, String text, {bool isCorrect = false}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          // Logic to handle selection
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.radio_button_unchecked, color: Theme.of(context).primaryColor),
              const SizedBox(width: 12),
              Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
            ],
          ),
        ),
      ),
    );
  }
}

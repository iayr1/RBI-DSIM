import 'package:flutter/material.dart';
import '../models/subject.dart';
import '../services/mock_data.dart';
import 'widgets/text_diagram.dart';

class NotesScreen extends StatelessWidget {
  final String topicId;
  const NotesScreen({Key? key, required this.topicId}) : super(key: key);

  Topic? _findTopic() {
    for (var subject in MockData.getSyllabus()) {
      for (var sub in subject.subSections) {
        for (var topic in sub.topics) {
          if (topic.id == topicId) return topic;
        }
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final topic = _findTopic();
    if (topic == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Not Found')),
        body: const Center(child: Text('Topic not found')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(topic.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {
              // Add to bookmarks
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Topic Bookmarked!')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.check_circle_outline),
            onPressed: () {
              // Mark as revised
               ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Revision Count Updated!')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Difficulty tag
            Row(
              children: [
                Chip(
                  label: Text(topic.difficultyLevel),
                  backgroundColor: topic.difficultyLevel == 'Hard' 
                      ? Colors.red.withOpacity(0.2) 
                      : Colors.green.withOpacity(0.2),
                ),
                const SizedBox(width: 8),
                const Chip(
                  label: Text('Exam Important', style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.orange,
                )
              ],
            ),
            const SizedBox(height: 16),
            
            // Explanation
            Text('Explanation', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(topic.explanation, style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 24),

            // Formula Box
            if (topic.formulas.isNotEmpty) ...[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.blue),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.functions, color: Colors.blue),
                        SizedBox(width: 8),
                        Text('Important Formulas', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ...topic.formulas.map((f) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('• $f', style: const TextStyle(fontFamily: 'monospace', fontSize: 16)),
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],

            // Key Concepts
            if (topic.keyConcepts.isNotEmpty) ...[
              Text('Key Concepts', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              ...topic.keyConcepts.map((k) => Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.star, size: 16, color: Colors.amber),
                    const SizedBox(width: 8),
                    Expanded(child: Text(k)),
                  ],
                ),
              )),
              const SizedBox(height: 24),
            ],

            // Text Diagram Placeholder
            if (topic.diagramType != 'None') ...[
              Text('Diagram: ${topic.diagramType}', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              TextDiagram(diagramType: topic.diagramType),
              const SizedBox(height: 24),
            ],
          ],
        ),
      ),
    );
  }
}

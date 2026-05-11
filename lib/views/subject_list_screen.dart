import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../services/mock_data.dart';

class SubjectListScreen extends StatelessWidget {
  const SubjectListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subjects = MockData.getSyllabus();

    return Scaffold(
      appBar: AppBar(
        title: const Text('RBI DSIM Syllabus'),
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          final subject = subjects[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: ExpansionTile(
              title: Text(subject.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              children: subject.subSections.map((subSection) {
                return ExpansionTile(
                  title: Text(subSection.name),
                  backgroundColor: Theme.of(context).brightness == Brightness.dark 
                      ? Colors.white10 
                      : Colors.black12,
                  children: subSection.topics.map((topic) {
                    return ListTile(
                      title: Text(topic.name),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (topic.difficultyLevel == 'Hard') 
                            const Icon(Icons.local_fire_department, color: Colors.red, size: 16),
                          const Icon(Icons.arrow_forward_ios, size: 14),
                        ],
                      ),
                      onTap: () {
                        context.push('/notes/${topic.id}');
                      },
                    );
                  }).toList(),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}

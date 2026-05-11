class Subject {
  final String id;
  final String name;
  final List<SubSection> subSections;

  Subject({
    required this.id,
    required this.name,
    required this.subSections,
  });
}

class SubSection {
  final String id;
  final String name;
  final List<Topic> topics;

  SubSection({
    required this.id,
    required this.name,
    required this.topics,
  });
}

class Topic {
  final String id;
  final String name;
  final String explanation;
  final List<String> formulas;
  final List<String> keyConcepts;
  final List<String> importantPoints;
  final List<String> shortcutTricks;
  final List<String> pyqConcepts;
  final String difficultyLevel; // 'Easy', 'Medium', 'Hard'
  final String diagramType; // 'Flowchart', 'ProbabilityTree', etc., or 'None'

  Topic({
    required this.id,
    required this.name,
    required this.explanation,
    this.formulas = const [],
    this.keyConcepts = const [],
    this.importantPoints = const [],
    this.shortcutTricks = const [],
    this.pyqConcepts = const [],
    this.difficultyLevel = 'Medium',
    this.diagramType = 'None',
  });
}

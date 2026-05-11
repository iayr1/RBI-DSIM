import '../models/subject.dart';

class MockData {
  static List<Subject> getSyllabus() {
    return [
      Subject(
        id: 's1',
        name: 'Theory of Probability, Probability Distributions and Sampling Theory',
        subSections: [
          SubSection(
            id: 's1_ss1',
            name: '1. Probability Basics',
            topics: [
              Topic(
                id: 't_classical_prob',
                name: 'Classical Probability',
                explanation: 'Classical probability is the statistical concept that measures the likelihood of something happening. In a classic sense, it means that every statistical experiment will contain elements that are equally likely to happen.',
                formulas: ['P(A) = (Number of favorable outcomes) / (Total number of possible outcomes)'],
                keyConcepts: ['Equally likely outcomes', 'Sample space', 'Event'],
                importantPoints: ['Assumes finite number of possible outcomes.', 'All outcomes must be mutually exclusive and equally likely.'],
                difficultyLevel: 'Easy',
              ),
              Topic(
                id: 't_axiomatic_prob',
                name: 'Axiomatic Probability',
                explanation: 'Axiomatic probability is a unifying theory of probability that sets down a set of axioms (rules) that apply to all types of probability.',
                formulas: [
                  'Axiom 1: P(E) ≥ 0 for any event E',
                  'Axiom 2: P(S) = 1 where S is the sample space',
                  'Axiom 3: P(E1 ∪ E2 ∪ ...) = P(E1) + P(E2) + ... for mutually exclusive events'
                ],
                keyConcepts: ['Kolmogorov Axioms', 'Probability Measure', 'Sigma Algebra'],
                pyqConcepts: ['Checking if a given function is a valid probability measure.'],
                difficultyLevel: 'Medium',
              ),
            ],
          ),
          SubSection(
            id: 's1_ss2',
            name: '2. Limit Theorems',
            topics: [
              Topic(
                id: 't_clt',
                name: 'Central Limit Theorem',
                explanation: 'The central limit theorem (CLT) states that the distribution of a sample variable approximates a normal distribution as the sample size becomes larger, assuming that all samples are identical in size, and regardless of the population distribution shape.',
                formulas: ['Z = (X̄ - μ) / (σ / √n)'],
                keyConcepts: ['Sample Mean', 'Normal Approximation', 'Convergence in distribution'],
                importantPoints: ['Usually n > 30 is considered sufficient.', 'Works for any underlying distribution with finite variance.'],
                diagramType: 'Flowchart', // Will show a sequence: Population -> Large Sample -> Normal Dist
                difficultyLevel: 'Hard',
              )
            ],
          )
        ],
      ),
      Subject(
        id: 's2',
        name: 'Linear Models and Economic Statistics',
        subSections: [
          SubSection(
            id: 's2_ss1',
            name: '1. Linear Algebra',
            topics: [
              Topic(
                id: 't_eigen',
                name: 'Eigen Values & Eigen Vectors',
                explanation: 'Eigenvectors are vectors that, when operated on by a given operator, give a scalar multiple of themselves. The scalar multiplier is the eigenvalue.',
                formulas: ['Ax = λx', 'det(A - λI) = 0'],
                keyConcepts: ['Characteristic Equation', 'Diagonalization'],
                pyqConcepts: ['Finding eigenvalues for special matrices (orthogonal, idempotent).'],
                difficultyLevel: 'Medium',
              )
            ],
          )
        ],
      ),
      Subject(
        id: 's8',
        name: 'Data Science, AI and Machine Learning',
        subSections: [
          SubSection(
            id: 's8_ss1',
            name: '1. Machine Learning Basics',
            topics: [
              Topic(
                id: 't_supervised',
                name: 'Supervised Learning',
                explanation: 'Supervised learning is a machine learning approach that is defined by its use of labeled datasets to train algorithms that to classify data or predict outcomes accurately.',
                diagramType: 'ML Pipeline Diagrams',
                difficultyLevel: 'Easy',
              )
            ],
          )
        ],
      )
    ];
  }
}

import 'package:flutter/material.dart';

class TextDiagram extends StatelessWidget {
  final String diagramType;

  const TextDiagram({Key? key, required this.diagramType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (diagramType) {
      case 'Flowchart':
        return _buildFlowchart(context);
      case 'ML Pipeline Diagrams':
        return _buildMLPipeline(context);
      default:
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text('Diagram: $diagramType'),
        );
    }
  }

  Widget _buildFlowchart(BuildContext context) {
    return Column(
      children: [
        _buildBox(context, 'Population (Size N)'),
        const Icon(Icons.arrow_downward, color: Colors.blue),
        _buildBox(context, 'Draw Random Sample (n > 30)'),
        const Icon(Icons.arrow_downward, color: Colors.blue),
        _buildBox(context, 'Sample Mean approaches\nNormal Distribution (CLT)'),
      ],
    );
  }

  Widget _buildMLPipeline(BuildContext context) {
    return Column(
      children: [
        _buildBox(context, 'Raw Data'),
        const Icon(Icons.arrow_downward, color: Colors.green),
        _buildBox(context, 'Preprocessing & Feature Eng.'),
        const Icon(Icons.arrow_downward, color: Colors.green),
        _buildBox(context, 'Model Training (Supervised)'),
        const Icon(Icons.arrow_downward, color: Colors.green),
        _buildBox(context, 'Evaluation & Prediction'),
      ],
    );
  }

  Widget _buildBox(BuildContext context, String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}

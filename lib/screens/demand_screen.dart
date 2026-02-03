import 'package:flutter/material.dart';

class DemandScreen extends StatelessWidget {
  const DemandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Market Demand'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Top Demanded Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildDemandCard('Wheat', 'High Demand', 'Risk: Low'),
            _buildDemandCard('Steel', 'Medium Demand', 'Risk: Medium'),
            _buildDemandCard('Sunflower Oil', 'High Demand', 'Risk: Low'),
          ],
        ),
      ),
    );
  }

  Widget _buildDemandCard(String product, String demand, String risk) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.trending_up, color: Colors.green),
        title: Text(product),
        subtitle: Text('$demand  •  $risk'),
      ),
    );
  }
}
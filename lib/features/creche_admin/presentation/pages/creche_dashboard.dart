import 'package:flutter/material.dart';

class CrecheDashboard extends StatelessWidget {
  const CrecheDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crèche Admin Dashboard')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Operational Overview', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              _buildActionGrid(context),
              const SizedBox(height: 24),
              const Text('Financial Summary', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              _buildFinancialSummary(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionGrid(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        _buildActionCard(Icons.people, 'Staff Management', Colors.blue),
        _buildActionCard(Icons.meeting_room, 'Room Assignment', Colors.green),
        _buildActionCard(Icons.directions_bus, 'Vehicles', Colors.orange),
        _buildActionCard(Icons.assessment, 'Internal Audits', Colors.red),
      ],
    );
  }

  Widget _buildActionCard(IconData icon, String label, Color color) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 8),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  Widget _buildFinancialSummary() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Revenue'), Text('€4,500', style: TextStyle(color: Colors.green))],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Expenses'), Text('€2,100', style: TextStyle(color: Colors.red))],
            ),
          ],
        ),
      ),
    );
  }
}

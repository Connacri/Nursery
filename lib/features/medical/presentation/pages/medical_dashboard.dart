import 'package:flutter/material.dart';

class MedicalDashboard extends StatelessWidget {
  const MedicalDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Medical Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildAlertsSection(),
            const SizedBox(height: 20),
            Expanded(child: _buildHealthRecords()),
          ],
        ),
      ),
    );
  }

  Widget _buildAlertsSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        children: [
          Row(
            children: [
              Icon(Icons.warning, color: Colors.red),
              SizedBox(width: 8),
              Text(
                'Health Alerts',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ListTile(
            title: Text('Administer Insulin - Marc (10:00)'),
            subtitle: Text('Room 3A'),
          ),
        ],
      ),
    );
  }

  Widget _buildHealthRecords() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('Health Record - Child $index'),
            subtitle: const Text('Blood: O+ | Vaccinations: Up to date'),
            trailing: const Icon(Icons.show_chart),
            onTap: () {},
          ),
        );
      },
    );
  }
}

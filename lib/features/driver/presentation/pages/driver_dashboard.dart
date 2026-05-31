import 'package:flutter/material.dart';

class DriverDashboard extends StatelessWidget {
  const DriverDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transport Management')),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.grey.shade200,
            child: const Center(
              child: Text(
                'GPS / Map View Placeholder',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text(
                  'Current Trip: Route A',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                _buildChildStop('Alice Smith', 'Scheduled: 08:15', true),
                _buildChildStop('Bob Brown', 'Scheduled: 08:25', false),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.sos, color: Colors.white),
              label: const Text(
                'SOS BUTTON',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChildStop(String name, String time, bool checked) {
    return ListTile(
      title: Text(name),
      subtitle: Text(time),
      trailing: Checkbox(value: checked, onChanged: (val) {}),
    );
  }
}

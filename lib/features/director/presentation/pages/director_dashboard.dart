import 'package:flutter/material.dart';

class DirectorDashboard extends StatelessWidget {
  const DirectorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Director Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSummaryCard('Strategic Board'),
          const SizedBox(height: 16),
          _buildSection('Human Resources', [
            _buildListTile(Icons.beach_access, 'Leave Validation'),
            _buildListTile(Icons.person_search, 'Evaluations'),
          ]),
          const SizedBox(height: 16),
          _buildSection('Communication', [
            _buildListTile(Icons.announcement, 'Global Announcements'),
            _buildListTile(Icons.mail, 'Newsletters'),
          ]),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(String title) {
    return Card(
      elevation: 4,
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [Text('Occupation'), Text('85%', style: TextStyle(color: Colors.blue))]),
                Column(children: [Text('Staff Presence'), Text('92%', style: TextStyle(color: Colors.green))]),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        Card(child: Column(children: children)),
      ],
    );
  }

  Widget _buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}

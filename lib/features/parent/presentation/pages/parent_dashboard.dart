import 'package:flutter/material.dart';

class ParentDashboard extends StatelessWidget {
  const ParentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Child - Daily Activity')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildChildSelector(),
              const SizedBox(height: 20),
              const Text(
                'Today\'s Journal',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              _buildActivityTimeline(),
              const SizedBox(height: 20),
              _buildTransportStatus(),
              const SizedBox(height: 20),
              _buildQuickLinks(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Daily'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Messages'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Market',
          ),
        ],
      ),
    );
  }

  Widget _buildChildSelector() {
    return const Card(
      child: ListTile(
        leading: CircleAvatar(child: Text('JS')),
        title: Text('John Smith'),
        subtitle: Text('Age: 3 years | Room: Butterflies'),
        trailing: Icon(Icons.arrow_drop_down),
      ),
    );
  }

  Widget _buildActivityTimeline() {
    return Card(
      child: Column(
        children: [
          _buildActivityItem(
            '08:30',
            'Arrived',
            Icons.check_circle,
            Colors.green,
          ),
          _buildActivityItem(
            '10:00',
            'Morning Snack (Apple & Milk)',
            Icons.restaurant,
            Colors.orange,
          ),
          _buildActivityItem('12:30', 'Nap Time', Icons.hotel, Colors.blue),
        ],
      ),
    );
  }

  Widget _buildActivityItem(
    String time,
    String desc,
    IconData icon,
    Color color,
  ) {
    return ListTile(
      leading: Text(time, style: const TextStyle(fontWeight: FontWeight.bold)),
      title: Text(desc),
      trailing: Icon(icon, color: color),
    );
  }

  Widget _buildTransportStatus() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          Icon(Icons.directions_bus, color: Colors.blue),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bus is 5 mins away',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Next stop: Elm Street'),
              ],
            ),
          ),
          Icon(Icons.map, color: Colors.blue),
        ],
      ),
    );
  }

  Widget _buildQuickLinks() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 3,
      children: [
        _buildLinkTile(Icons.description, 'Invoices'),
        _buildLinkTile(Icons.medical_services, 'Health'),
        _buildLinkTile(Icons.assignment, 'Contracts'),
        _buildLinkTile(Icons.family_restroom, 'Family Space'),
      ],
    );
  }

  Widget _buildLinkTile(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon, size: 20),
      title: Text(label, style: const TextStyle(fontSize: 12)),
      onTap: () {},
    );
  }
}

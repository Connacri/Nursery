import 'package:flutter/material.dart';

class SuperAdminDashboard extends StatelessWidget {
  const SuperAdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Super Admin Dashboard')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('NurseryOS Super Admin')),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Tenant Management'),
              onTap: () => Navigator.pushNamed(context, '/super-admin/tenants'),
            ),
            ListTile(
              leading: const Icon(Icons.analytics),
              title: const Text('Business Intelligence'),
              onTap: () => Navigator.pushNamed(context, '/super-admin/bi'),
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        children: [
          _buildStatCard('Active Tenants', '24', Colors.blue),
          _buildStatCard('Live Users', '156', Colors.green),
          _buildStatCard('MRR', '€12,400', Colors.orange),
          _buildStatCard('API Health', '99.9%', Colors.purple),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String value, Color color) {
    return Card(
      color: color.withOpacity(0.1),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(value, style: TextStyle(fontSize: 24, color: color, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

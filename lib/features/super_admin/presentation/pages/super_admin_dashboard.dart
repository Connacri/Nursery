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
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'NurseryOS Super Admin',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
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
        crossAxisCount: MediaQuery.sizeOf(context).width > 600 ? 4 : 2,
        padding: const EdgeInsets.all(16),
        children: const [
          StatCard(title: 'Active Tenants', value: '24', color: Colors.blue),
          StatCard(title: 'Live Users', value: '156', color: Colors.green),
          StatCard(title: 'MRR', value: '€12,400', color: Colors.orange),
          StatCard(title: 'API Health', value: '99.9%', color: Colors.purple),
        ],
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return _HoverCard(
      color: color,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _HoverCard extends StatefulWidget {
  final Widget child;
  final Color color;

  const _HoverCard({super.key, required this.child, required this.color});

  @override
  State<_HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<_HoverCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: RepaintBoundary(
        child: AnimatedScale(
          scale: _isHovered ? 1.05 : 1.0,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          child: Card(
            elevation: _isHovered ? 8 : 2,
            color: widget.color.withAlpha(25),
            child: Center(child: widget.child),
          ),
        ),
      ),
    );
  }
}

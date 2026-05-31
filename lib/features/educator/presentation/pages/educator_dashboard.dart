import 'package:flutter/material.dart';

class EducatorDashboard extends StatelessWidget {
  const EducatorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Educator Dashboard')),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildSummaryHeader(),
                const SizedBox(height: 20),
                _buildQuickActions(),
                const SizedBox(height: 20),
                const Text(
                  'Active Group Management',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
              ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: _buildGroupList(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryHeader() {
    return const Card(
      child: ListTile(
        leading: CircleAvatar(child: Icon(Icons.school)),
        title: Text('Group: Les Papillons'),
        subtitle: Text('12 children present | 2 absent'),
      ),
    );
  }

  Widget _buildQuickActions() {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        _buildActionButton(Icons.edit_note, 'Intelligent Journal'),
        _buildActionButton(Icons.camera_alt, 'Add Photos'),
        _buildActionButton(Icons.event, 'Pedagogical Plan'),
        _buildActionButton(Icons.analytics, 'Dev Follow-up'),
      ],
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return SizedBox(
      width: 150,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(label, style: const TextStyle(fontSize: 12)),
        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(12)),
      ),
    );
  }

  Widget _buildGroupList() {
    // Optimized: Replaced ListView.builder(shrinkWrap: true) with SliverList.builder
    // to enable efficient lazy loading of children cards.
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(backgroundColor: Colors.blueGrey),
          title: Text('Child '),
          subtitle: const Text('Allergies: None'),
          trailing: IconButton(
            icon: const Icon(Icons.check_circle_outline),
            onPressed: () {},
          ),
        );
      },
    );
  }
}

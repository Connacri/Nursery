import 'package:flutter/material.dart';

class TenantManagementPage extends StatelessWidget {
  const TenantManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tenant Management')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Tenant $index'),
            subtitle: const Text('Plan: Enterprise'),
            trailing: PopupMenuButton(
              tooltip: 'More options',
              itemBuilder: (context) => [
                const PopupMenuItem(value: 'suspend', child: Text('Suspend')),
                const PopupMenuItem(value: 'delete', child: Text('Delete')),
                const PopupMenuItem(value: 'clone', child: Text('Clone')),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add new tenant',
        child: const Icon(Icons.add),
      ),
    );
  }
}

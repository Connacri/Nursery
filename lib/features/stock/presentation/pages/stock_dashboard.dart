import 'package:flutter/material.dart';

class StockDashboard extends StatelessWidget {
  const StockDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inventory Management')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildStockAlerts(),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildInventoryItem('Diapers (Size 3)', '120 units', 'Low Stock', Colors.orange),
                  _buildInventoryItem('Milk Powder', '45 cans', 'Optimal', Colors.green),
                  _buildInventoryItem('Hand Sanitizer', '2 bottles', 'CRITICAL', Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('New Purchase Request'),
        icon: const Icon(Icons.add_shopping_cart),
      ),
    );
  }

  Widget _buildStockAlerts() {
    return Card(
      color: Colors.orange.shade50,
      child: const ListTile(
        leading: Icon(Icons.warning_amber, color: Colors.orange),
        title: Text('3 Items below threshold'),
        subtitle: Text('Click to view and restock'),
      ),
    );
  }

  Widget _buildInventoryItem(String name, String qty, String status, Color statusColor) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text('Quantity: $qty'),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(color: statusColor, borderRadius: BorderRadius.circular(4)),
          child: Text(status, style: const TextStyle(color: Colors.white, fontSize: 10)),
        ),
      ),
    );
  }
}

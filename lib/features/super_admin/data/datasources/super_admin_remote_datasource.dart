import 'package:supabase_flutter/supabase_flutter.dart';

class SuperAdminRemoteDataSource {
  final SupabaseClient _client = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> getTenants() async {
    final response = await _client.from('tenants').select();
    return List<Map<String, dynamic>>.from(response);
  }

  Future<void> createTenant(String name, String slug) async {
    await _client.from('tenants').insert({'name': name, 'slug': slug});
  }

  Future<void> suspendTenant(String id) async {
    await _client.from('tenants').update({'status': 'suspended'}).eq('id', id);
  }
}

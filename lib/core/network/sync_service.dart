import 'package:supabase_flutter/supabase_flutter.dart';

class SyncService {
  final SupabaseClient _client = Supabase.instance.client;

  Future<void> syncLocalData() async {
    // This is a placeholder for real offline sync logic (e.g. using sqflite)
    print('Checking for local changes to sync...');
  }
}

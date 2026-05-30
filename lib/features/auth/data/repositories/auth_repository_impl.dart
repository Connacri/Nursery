import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final firebase.FirebaseAuth _firebaseAuth = firebase.FirebaseAuth.instance;
  final SupabaseClient _supabaseClient = Supabase.instance.client;

  @override
  Future<UserEntity?> login(String email, String password) async {
    final credentials = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (credentials.user != null) {
      final response = await _supabaseClient
          .from('profiles')
          .select()
          .eq('id', credentials.user!.uid)
          .single();

      return UserModel.fromJson(response);
    }
    return null;
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<UserEntity?> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      final response = await _supabaseClient
          .from('profiles')
          .select()
          .eq('id', user.uid)
          .single();
      return UserModel.fromJson(response);
    }
    return null;
  }
}

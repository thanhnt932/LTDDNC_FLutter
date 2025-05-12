import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/auth_request.dart';
import '../models/auth_response.dart';
import '../config/app_config.dart';

class AuthService {
  Future<AuthResponse> authenticate(AuthRequest request) async {
    try {
      final response = await http.post(
        Uri.parse('${AppConfig.apiUrl}/auth/authenticate'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(request.toJson()),
      ).timeout(
        Duration(milliseconds: AppConfig.connectionTimeout),
      );

      if (response.statusCode == 200) {
        return AuthResponse.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to authenticate: ${response.body}');
      }
    } catch (e) {
      throw Exception('Failed to connect to server: $e');
    }
  }
} 
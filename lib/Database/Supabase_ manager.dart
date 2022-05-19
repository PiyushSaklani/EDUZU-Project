import 'dart:developer';

import 'package:supabase/supabase.dart';

const supabaseUrl = "https://rhgujhauazlzllyxhjur.supabase.co";
const supabaseKey =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJoZ3VqaGF1YXpsemxseXhoanVyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTEyOTc1OTksImV4cCI6MTk2Njg3MzU5OX0.jIKLuHPhFClxW3ncILo3tuVzUQwfXQbeEr4VjoY85kk";

class SupabaseManager {
  static final client = SupabaseClient(supabaseUrl, supabaseKey);

  void signUpUser(var email, var password) async {
    await client.auth.signUp(email, password);
  }

  Future<void> signInUser(var email, var password) async {
    final GotrueSessionResponse response = await client.auth.signIn(
      email: email,
      password: password,
    );

    if (response.error != null) {
      throw 'Unable to Sign in';
    }
  }

  getData() async {
    var response = await client
        .from("Database")
        .select()
        .eq('id', client.auth.currentUser?.id ?? '')
        .execute();
    if (response.error == null) {
      log("response.data: ${response.data}");
      return response.data[0];
    } else {
      log("ERROR: ${response.error}");
    }
  }
}

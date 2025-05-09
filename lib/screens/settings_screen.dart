import 'package:flutter/material.dart';
import 'privacy_policy_screen.dart';
import 'terms_conditions_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        children: [
          const Text('PROFILE', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          SwitchListTile(
            value: true,
            onChanged: (_) {},
            title: const Text('Push Notification'),
            activeColor: Color(0xFF022E5B),
          ),
          SwitchListTile(
            value: false,
            onChanged: (_) {},
            title: const Text('Location'),
            activeColor: Colors.purple.shade100,
          ),
          ListTile(
            title: const Text('Language'),
            trailing: const Text('English'),
            onTap: () {},
          ),
          const SizedBox(height: 20),
          const Text('OTHER', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          ListTile(
            title: const Text('Privacy Policy'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen()));
            },
          ),
          ListTile(
            title: const Text('Terms and Conditions'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const TermsConditionsScreen()));
            },
          ),
        ],
      ),
    );
  }
}

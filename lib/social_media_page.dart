import 'package:flutter/material.dart';

class SocialMediaPage extends StatelessWidget {
  const SocialMediaPage({super.key});

  void showAccount(BuildContext context, String account) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Selected account: $account'),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text('Connect With Me',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(Icons.facebook,
              color: Colors.blue,
              ),
              title: const Text('Facebook'),
              subtitle: const Text('Michelle Banico'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showAccount(context, 'Facebook: Michelle Banico',
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.camera_alt,
              color: Colors.pink,
              ),
              title: const Text('Instagram'),
              subtitle: const Text('@mch.sso'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showAccount(context, 'Instagram: @mch.sso.',
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.play_circle,
              color: Colors.red,
              ),
              title: const Text('Youtube'),
              subtitle: const Text('@Chim Cahapay'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => showAccount(context, 'Youtube: Chim Cahapay'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
            
          
import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My Profile', home: const ProfilePage());
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 15),
            const Text(
              'Hassan Teslim',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SectionTitle(title: 'About Me'),
                  Text(
                    'I am a beginner Flutter developer with 3 months of experience. I enjoy building simple apps to learn more about layouts, widgets, and UI design.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  SectionTitle(title: 'Skills'),
                  SkillItem(text: 'Flutter & Dart'),
                  SkillItem(text: 'Basic UI Design'),
                  SkillItem(text: 'Firebase (basic)'),
                  SkillItem(text: 'Version Control (Git)'),
                  SizedBox(height: 20),
                  SectionTitle(title: 'Contact'),
                  ContactRow(
                    icon: Icons.email,
                    label: 'Email',
                    value: 'hassanteslim12@gmail.com',
                  ),
                  ContactRow(
                    icon: Icons.phone,
                    label: 'Phone',
                    value: '+234 800 000 0000',
                  ),
                  ContactRow(
                    icon: Icons.web,
                    label: 'Portfolio',
                    value: 'https://github.com/hassanteslim007',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.deepPurple,
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String text;

  const SkillItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.check_circle_outline, color: Colors.deepPurple),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ContactRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple),
          const SizedBox(width: 10),
          Text('$label: ', style: const TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

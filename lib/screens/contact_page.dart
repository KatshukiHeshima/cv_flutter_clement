import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/cv_data.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  Future<void> _open(BuildContext context, Uri uri) async {
    final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Action indisponible sur cet appareil.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.phone, color: Colors.green),
                title: const Text('Téléphone'),
                subtitle: const Text(CvData.telephone),
                trailing: const Icon(Icons.open_in_new, size: 18),
                onTap: () => _open(context, Uri.parse('tel:+243977529517')),
              ),
              const Divider(height: 1),
              ListTile(
                leading: const Icon(Icons.email, color: Colors.redAccent),
                title: const Text('E-mail'),
                subtitle: const Text(CvData.email),
                trailing: const Icon(Icons.open_in_new, size: 18),
                onTap: () => _open(
                  context,
                  Uri(
                    scheme: 'mailto',
                    path: CvData.email,
                    queryParameters: {'subject': 'Contact CV Flutter'},
                  ),
                ),
              ),
              const Divider(height: 1),
              const ListTile(
                leading: Icon(Icons.location_on, color: Colors.blue),
                title: Text('Adresse'),
                subtitle: Text(CvData.adresse),
              ),
              const Divider(height: 1),
              ListTile(
                leading: const Icon(Icons.work, color: Color(0xFF0A66C2)),
                title: const Text('LinkedIn'),
                subtitle: const Text(CvData.linkedinUrl),
                trailing: const Icon(Icons.open_in_new, size: 18),
                onTap: () => _open(context, Uri.parse(CvData.linkedinUrl)),
              ),
              const Divider(height: 1),
              ListTile(
                leading: const Icon(Icons.code, color: Colors.black87),
                title: const Text('GitHub'),
                subtitle: const Text(CvData.githubUrl),
                trailing: const Icon(Icons.open_in_new, size: 18),
                onTap: () => _open(context, Uri.parse(CvData.githubUrl)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
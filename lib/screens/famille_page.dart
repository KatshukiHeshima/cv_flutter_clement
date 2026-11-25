import 'package:flutter/material.dart';
import '../data/cv_data.dart';
import '../widgets/safe_avatar.dart';

class FamillePage extends StatelessWidget {
  const FamillePage({super.key});

  @override
  Widget build(BuildContext context) {
    const membres = CvData.membresFamille;
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: membres.length,
      itemBuilder: (_, i) {
        final m = membres[i];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: ListTile(
            contentPadding: const EdgeInsets.all(12),
            leading: SafeAvatar(
              assetPath: m.assetPhoto,
              fallbackText: m.initiales,
              radius: 30,
            ),
            title: Text(
              m.nom,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('${m.lienParente} • Profession : ${m.profession}'),
          ),
        );
      },
    );
  }
}
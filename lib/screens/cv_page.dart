import 'package:flutter/material.dart';

import '../data/cv_data.dart';
import '../widgets/safe_avatar.dart';

class CvPage extends StatelessWidget {
  const CvPage({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SafeAvatar(
                  assetPath: 'assets/images/profil.jpeg',
                  fallbackText: 'KHC',
                  radius: 46,
                ),
                const SizedBox(height: 12),
                Text(
                  CvData.nomComplet,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  CvData.titre,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: primary, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                const Text(
                  CvData.localisation,
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                ),
                const Divider(height: 22),
                const Text(CvData.profil, style: TextStyle(height: 1.45)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        _CardSection(
          title: 'Expériences professionnelles',
          icon: Icons.work_outline,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: CvData.experiences
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.periode,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: primary,
                          ),
                        ),
                        Text(
                          e.poste,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          e.org,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 4),
                        ...e.points.map(
                          (pt) => Text(
                            '• $pt',
                            style: const TextStyle(fontSize: 13.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 12),
        _CardSection(
          title: 'Formation & certifications',
          icon: Icons.school_outlined,
          child: Column(
            children: CvData.formations
                .map(
                  (f) => ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.check_circle_outline, size: 18),
                    title: Text(f.$1),
                    subtitle: Text(f.$2),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 12),
        _CardSection(
          title: 'Compétences & langues',
          icon: Icons.psychology_outlined,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Outils & collecte',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: CvData.outils
                    .map((o) => Chip(label: Text(o)))
                    .toList(),
              ),
              const SizedBox(height: 12),
              const Text(
                'Méthodes & qualités',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                'Enquêtes quantitatives, entretiens individuels (KII), focus groups '
                '(FGD), PDM, gestion des plaintes (CFM), rigueur, confidentialité, '
                'travail en équipe et sous pression.',
              ),
              const SizedBox(height: 12),
              const Text(
                'Langues',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: CvData.langues
                    .map((l) => Chip(label: Text(l)))
                    .toList(),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        _CardSection(
          title: 'Centres d\'intérêt',
          icon: Icons.interests_outlined,
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: CvData.interets.map((i) => Chip(label: Text(i))).toList(),
          ),
        ),
      ],
    );
  }
}

class _CardSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const _CardSection({
    required this.title,
    required this.icon,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(height: 20),
            child,
          ],
        ),
      ),
    );
  }
}

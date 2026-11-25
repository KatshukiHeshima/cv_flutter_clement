import 'package:flutter/material.dart';
import '../data/cv_data.dart';
import '../widgets/safe_avatar.dart';
import 'contact_page.dart';
import 'cv_page.dart';
import 'famille_page.dart';
import 'login_page.dart';

class MainShell extends StatefulWidget {
  final String identifiant;
  const MainShell({super.key, required this.identifiant});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _index = 0;

  static const _titles = ['Accueil — CV', 'Famille', 'Contact'];
  static const _pages = [CvPage(), FamillePage(), ContactPage()];

  void _goTo(int i) => setState(() => _index = i);

  void _logout() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_index]),
        backgroundColor: scheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: scheme.primary),
              currentAccountPicture: const SafeAvatar(
                assetPath: 'assets/images/profil.jpg',
                fallbackText: 'KHC',
              ),
              accountName: const Text(CvData.nomComplet),
              accountEmail: Text(widget.identifiant),
            ),
            ListTile(
              leading: const Icon(Icons.badge_outlined),
              title: const Text('Accueil (CV)'),
              selected: _index == 0,
              onTap: () {
                _goTo(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.family_restroom),
              title: const Text('Famille'),
              selected: _index == 1,
              onTap: () {
                _goTo(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail_outlined),
              title: const Text('Contact'),
              selected: _index == 2,
              onTap: () {
                _goTo(2);
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                'Déconnexion',
                style: TextStyle(color: Colors.red),
              ),
              onTap: _logout,
            ),
          ],
        ),
      ),
      body: IndexedStack(index: _index, children: _pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: _goTo,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.badge_outlined),
            selectedIcon: Icon(Icons.badge),
            label: 'CV',
          ),
          NavigationDestination(
            icon: Icon(Icons.family_restroom_outlined),
            selectedIcon: Icon(Icons.family_restroom),
            label: 'Famille',
          ),
          NavigationDestination(
            icon: Icon(Icons.contact_mail_outlined),
            selectedIcon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
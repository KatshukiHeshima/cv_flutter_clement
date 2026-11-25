import 'package:cv_flutter_clement/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Affiche la page de connexion et le bouton Se connecter', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));
    await tester.pump();

    // Vérifie la présence du bouton "Se connecter" et de deux champs de saisie (identifiant + mot de passe)
    expect(find.text('Se connecter'), findsOneWidget);
    expect(find.byType(TextFormField), findsAtLeastNWidgets(2));
  });
}
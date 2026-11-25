import '../models/membre_famille.dart';

class CvData {
  static const nomComplet = 'KATSHUKI HESHIMA Clément';
  static const titre = 'Gestionnaire de données & Agent d\'enquête MEAL';
  static const localisation = 'Goma, Nord-Kivu (RDC) • Permis B';
  static const profil =
      'Plus de 7 ans d\'expérience dans l\'humanitaire au Nord-Kivu : '
      'collecte mobile (KoboToolbox, ODK), enquêtes quantitatives et '
      'qualitatives (entretiens individuels, focus groups), suivi '
      'post-distribution (PDM) et enregistrement biométrique (SCOPE). '
      'À l\'aise en milieu rural et en contexte difficile.';

  static const telephone = '+243 977 529 517';
  static const email = 'ckatshuki6@gmail.com';
  static const adresse = 'Goma, Nord-Kivu, République Démocratique du Congo';
  static const linkedinUrl = 'https://www.linkedin.com';
  static const githubUrl = 'https://github.com';

  static const experiences = [
    (
      periode: 'Août 2025 – Août 2026',
      poste: 'Agent d\'enquête et PDM',
      org: 'ONG AIDES — Goma',
      points: [
        'Collecte sur smartphone (KoboToolbox) pour les enquêtes PDM (PAM).',
        'Entretiens individuels et focus groups (FGD) auprès des bénéficiaires.',
        'Gestion de la table des plaintes (CFM) et encadrement d\'enquêteurs.',
      ],
    ),
    (
      periode: 'Février 2025 – Juin 2025',
      poste: 'Agent de support logistique et opérations terrain',
      org: 'Consortium CH-ACDD — Nord-Kivu',
      points: [
        'Appui logistique et organisation des opérations terrain.',
        'Animation communautaire et gestion des plaintes.',
      ],
    ),
    (
      periode: 'Août 2024 – Janvier 2025',
      poste: 'Gestionnaire / encodeur de données',
      org: 'World Vision RDC — Goma',
      points: [
        'Encodage, vérification et gestion des données terrain.',
        'Focus groups et animation communautaire.',
      ],
    ),
    (
      periode: 'Janvier 2020 – Juillet 2024',
      poste: 'Agent d\'enquête — ciblage et enregistrement biométrique (SCOPE)',
      org: 'Consortium CH-ACDD — Nord-Kivu',
      points: [
        'Ciblage et enregistrement biométrique des ménages avec SCOPE (PAM).',
        'Enquêtes urbaines et rurales, CFM et encadrement d\'enquêteurs.',
      ],
    ),
    (
      periode: 'Février 2019 – Décembre 2019',
      poste: 'Encodeur de données',
      org: 'CAAP-Tujitegemee — Goma',
      points: [
        'Saisie et contrôle des données ; animation communautaire et CFM.',
      ],
    ),
  ];

  static const formations = [
    (
      'Licence 3 en Informatique Appliquée à la Gestion (en cours)',
      'ISIG-Goma',
    ),
    ('Diplôme d\'État en Études Commerciales', 'Institut Maendeleo, Goma'),
    ('MEAL Essentials certifié (90%)', 'Novembre 2025'),
    (
      'PSEA (Prévention de l\'exploitation et des abus sexuels) — certifié',
      'Mai 2025',
    ),
  ];

  static const outils = [
    'KoboToolbox / KoboCollect',
    'ODK Collect',
    'CommCare',
    'SurveyCTO',
    'SCOPE',
    'Excel & Word',
  ];

  static const langues = ['Français', 'Swahili', 'Anglais'];

  static const interets = [
    'Développement mobile (Flutter)',
    'Analyse de données MEAL',
    'Lecture & formation continue',
    'Engagement communautaire',
  ];

  static const membresFamille = [
    MembreFamille(
      nom: 'KALENGAI HESHIMA Gloire',
      lienParente: 'Père',
      profession: 'À compléter',
      assetPhoto: 'assets/images/famille/pere.jpeg',
      initiales: 'P1',
    ),
    MembreFamille(
      nom: 'Kavira bahati christelle',
      lienParente: 'Mère',
      profession: 'Enseignante',
      assetPhoto: 'assets/images/famille/mere.jpeg',
      initiales: 'P2',
    ),
    MembreFamille(
      nom: 'KALENGAI HESHIMA Gloire',
      lienParente: 'Mère',
      profession: 'Menuisier',
      assetPhoto: 'assets/images/famille/frere.jpeg',
      initiales: 'P2',
    ),
    MembreFamille(
      nom: 'Glorieuse katungu mbavumoja',
      lienParente: 'soeur',
      profession: 'étudiante',
      assetPhoto: 'assets/images/famille/soeur.jpeg',
      initiales: 'FS',
    ),
  ];
}

import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  static const routeName = '/contact_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 // Titre
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Contacts',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    IconButton(
                       onPressed: () {
                        Navigator.pushNamed(context, '/settings_view');
                      },
                      icon: Icon(
                        Icons.settings,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      style: IconButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        padding: const EdgeInsets.all(12),
                        shape: const CircleBorder(), // Rend le bouton parfaitement circulaire
                      ),
                    ),
                  ],
                ),

                  const SizedBox(height: 25),

                  // Ligne de recherche avec filtre
                Row(
                  children: [
                    // Champ de recherche
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Rechercher',
                          labelStyle: TextStyle(color: Theme.of(context).colorScheme.tertiary),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                          ),
                          fillColor: Theme.of(context).colorScheme.inverseSurface,
                          filled: true,
                        ),
                      ),
                    ),
                    
                    // Bouton de filtre
                    IconButton(
                      onPressed: () {
                        // Action du filtre
                      },
                      icon: Icon(
                        Icons.filter_list,
                        color: Theme.of(context).colorScheme.primary,
                        size: 40, // Taille plus grande
                      ),
                      style: IconButton.styleFrom(
                        padding: const EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                
                // Carte de contact
                Card(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0), // Augmentez cette valeur pour plus d'arrondi
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0, // Augmentez cette valeur pour plus de hauteur
                      horizontal: 12.0
                    ),
                    child: Column(
                      children: [
                        // Première ligne avec photo, infos et menu
                        Row(
                          children: [
                            // Photo de profil
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/profile.jpg'),
                            ),
                            const SizedBox(width: 15),
                            
                            // Informations du contact
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'John Doe',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Date d'anniversaire: 15 avril 1990",
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.tertiary,
                                    ),
                                  ),
                                  Text(
                                    '(dans 45 jours)',
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            // Menu trois points
                            IconButton(
                              icon: const Icon(Icons.more_vert),
                              onPressed: () {},
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        // Deuxième ligne avec le bouton
                        SizedBox(
                          width: 280, // Force le bouton à prendre toute la largeur
                          child: OutlinedButton.icon(
                            icon: const Icon(
                              Icons.card_giftcard,
                              weight: 700,
                            ),
                            label: const Text(
                              'Ajouter un cadeau',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
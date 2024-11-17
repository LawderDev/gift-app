import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const routeName = '/settings_view';

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
                 Stack(
                  children: [
                    // Titre centré
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Configuration",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    // Croix positionnée de manière absolue
                    Positioned(
                      left: -10,
                      top: -2,
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.of(context).pop(),
                        color: Theme.of(context).colorScheme.tertiary
                      ),
                    ),
                  ],
                ),
                  

                const SizedBox(height: 30),

                Text(
                  "Modifier le mot de passe",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),

                const SizedBox(height: 10),
                
                // Champ de saisie mot de passe
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe actuel',
                    labelStyle: TextStyle(color: Theme.of(context).colorScheme.tertiary),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility),
                      color: Theme.of(context).colorScheme.secondary,
                      onPressed: () {},
                    ),
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                    filled: true,
                  ),
                ),

                const SizedBox(height: 14),

                // Champ de saisie mot de passe
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Nouveau mot de passe',
                    labelStyle: TextStyle(color: Theme.of(context).colorScheme.tertiary),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility),
                      color: Theme.of(context).colorScheme.secondary,
                      onPressed: () {},
                    ),
                    fillColor: Theme.of(context).colorScheme.inverseSurface,
                    filled: true,
                  ),
                ),

                const SizedBox(height: 18),

                // Bouton de connexion
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    minimumSize: const Size.fromHeight(50), // Définit une hauteur fixe
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100), // Garde les coins arrondis
                    ),
                  ),
                  onPressed: () {
                    
                  },
                  child: Text(
                    'Modifier',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                // Bouton de connexion
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    minimumSize: const Size.fromHeight(50), // Définit une hauteur fixe
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100), // Garde les coins arrondis
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login_view');
                  },
                  child: Text(
                    'Se déconnecter',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                // Bouton de connexion
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.error,
                    minimumSize: const Size.fromHeight(50), // Définit une hauteur fixe
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100), // Garde les coins arrondis
                    ),
                  ),
                  onPressed: () {
                  },
                  child: Text(
                    'Se désabonner',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.bold,
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
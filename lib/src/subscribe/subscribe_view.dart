import 'package:flutter/material.dart';

class SubscribeView extends StatelessWidget {
  const SubscribeView({super.key});

  static const routeName = '/subscribe_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
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
                        "S'abonner",
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

                // Champ de saisie email
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
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

                const SizedBox(height: 14),

                // Champ de saisie mot de passe
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
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
                    labelText: 'Confimrmer le mot de passe',
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


                const SizedBox(height: 68),

                Align(
                    child: Text(
                      "19.99€",
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),

                const SizedBox(height: 68),

                // Bouton de connexion
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    minimumSize: const Size.fromHeight(50), // Définit une hauteur fixe
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100), // Garde les coins arrondis
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "S'abonner",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Inscription
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login_view');
                    },
                    child: Column(
                      children: [
                         Text(
                          "Vous avez déjà un compte ?",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,// Optionnel : met en gras le texte "S'abonner"
                          ),
                        ),
                        const Text(
                          "Se connecter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, // Optionnel : met en gras le texte "S'abonner"
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
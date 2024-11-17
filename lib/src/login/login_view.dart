import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                Align(
                  alignment: Alignment.center,
                    child: Text(
                      'Connexion',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
              

                // Image
                Image.asset('assets/images/login_image.png'), // Remplacez par votre image

                
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

                // Mot de passe oublié
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Mot de passe oublié ?',
                       style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                      ),
                  ),
                ),

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
                    Navigator.pushNamed(context, '/contact_view');
                  },
                  child: Text(
                    'Se connecter',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Connexion avec Google
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact_view');
                  },
                  child: Text(
                    'Se connecter avec Google',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),

                // Inscription
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/subscribe_view');
                    },
                    child: Column(
                      children: [
                         Text(
                          "Vous n'avez pas de compte ?",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,// Optionnel : met en gras le texte "S'abonner"
                          ),
                        ),
                        const Text(
                          "S'abonner",
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
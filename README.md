# Travel Studio — Vercel Edition

## Déploiement
1. Décompresser le ZIP. Créer un dépôt GitHub privé et y déposer le contenu du dossier (vercel.json à la racine).
2. Dans https://vercel.com/new importer le dépôt. Framework Preset : Other. Root Directory : racine du dépôt. Output Directory : public. Aucun build ni variable d'environnement nécessaire.
3. Cliquer Deploy puis ouvrir l'adresse vercel.app attribuée.
4. Pour une activité commerciale, utiliser une offre Vercel adaptée (Pro plutôt que Hobby).

## Supabase (facultatif pour tester)
1. Créer un projet sur https://supabase.com/dashboard.
2. Exécuter supabase/database.sql une seule fois dans SQL Editor.
3. Créer un utilisateur dans Authentication > Users.
4. Dans Travel Studio > Paramètres, renseigner l'URL HTTPS du projet et la clé publique anon (ou publishable), puis se connecter. Ne jamais utiliser service_role ou une clé secrète.
5. Envoyer/récupérer manuellement les données. Chaque compte possède son propre espace distant. Exporter une sauvegarde JSON avant toute récupération ou migration.

## Limites
Adaptation statique de la V1, pas une réécriture Next.js. Le site est accessible publiquement; les données locales restent dans le navigateur et ne sont pas chiffrées. La connexion Supabase protège uniquement l'espace distant, pas l'accès à l'interface. Pas de synchronisation automatique ni de collaboration simultanée. PDF via impression du navigateur. Pas de réservation envoyée automatiquement. Ne pas utiliser de données clients réelles avant mise en place d'une authentification obligatoire et validation de sécurité. Déploiement Vercel et connexion Supabase non testés en ligne.

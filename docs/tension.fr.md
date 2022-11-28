<style>
g { color: #1ca64c }
b { color: #209cee }
o { color: #e67e22 }
r { color: #ff5338 }
pr { color: #375a7f }
</style>

# Tensions

## Définition

Twitter utilise des tweets, Gmail utilise des e-mails, Fractale utilise des tensions. Une tension est un objet de communication général qui s'apparente à un email et peut être envoyé à n'importe quel cercle dans Fractale. Elle sont particulièrement adaptées pour partager, suivre et garder une trace des tâches, problèmes, idées ou questions.
Philosophiquement, une tension est définie comme la distance entre l'endroit où vous êtes et celui où vous voulez être.
Une tension appartient à un certain type en fonction du problème à traiter. Il existe cinq types différents :

* **<g>Opérationnel</g>** : Une catégorie générale de tension pour les activités quotidiennes. Cela peut être une tâche, un problème ou tout ce qui doit être partagé dans une organisation.
* **<b>Gouvernance</b>** : Pour les sujets relatifs à la gouvernance, la structure de l'organisation, les mandats, etc.
* **<o>Help</o>** : Pour les demandes d'aide, les questions ou les clarifications.
* **<r>Alert</r>** : Pour les alertes, communication interne.
* **<pr>Annonce</pr>** : Pour les annonces, communication externe.

Chaque type de tension a une politique de notification et une politique d'accès limitant respectivement  qui sera notifié lors de la création de la tension et qui peut le faire.

En outre, les tensions peuvent être fermées lorsqu'elles sont résolues, ou rouvertes si nécessaire. Les tensions fermées ne sont pas visibles dans la vue par défaut, mais elles peuvent être recherchées et affichées.

Des étiquettes définies par l'utilisateur peuvent y être attachées, ce qui donne des indications visuelles et des capacités de filtrage.

Les utilisateurs peuvent être affectés à des tensions s'ils en ont la charge.

## Notifications

Lorsqu'une tension est créée, les notifications seront envoyées à un ensemble d'utilisateurs qui dépend du type de tension créé :

- Pour les tensions **Opérationnel**, **Gouvernance** et **Aide**, les notifications seront envoyées aux utilisateurs qui ont un rôle (lien principal) dans le cercle ciblé.
- Pour les tensions **Alerte**, les notifications seront envoyées à tous les membres en dessous du cercle ciblé (y compris tous les sous-cercles de manière récursive). Si le destinataire est le cercle racine, tous les membres, y compris [Guest](/circle/#guest), seront notifiés. Sinon, cela inclura les liens principaux des rôles.
- Pour les tensions **Annonce**, les notifications seront envoyées à tous les utilisateurs qui suivent l'organisation.

Une fois qu'une tension est créée, elle dispose d'un fil de discussion avec une liste d'utilisateurs abonnés. Les utilisateurs peuvent s'abonner ou se désabonner à une tension s'ils ont un accès en lecture à celle-ci. Les utilisateurs abonnés seront informés des nouveaux commentaires ou des changements de statut. Lors de la création d'une tension, seul son auteur est abonné par défaut.

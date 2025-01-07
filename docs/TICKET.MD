# API REST - Gestion des Tickets

Ce document décrit les endpoints disponibles pour gérer les tickets via l'API REST. Tous les endpoints sont accessibles sous le chemin de base : `/ticket`.

## Modèle de données : `TicketClientModel`

Voici la structure du modèle utilisé pour représenter un ticket :

```json
{
  "uuid_ticket": "string", // Identifiant unique du ticket
  "uuid_client": "string", // Identifiant unique du client
  "title": "string", // Titre du ticket
  "description": "string", // Description détaillée
  "comments": "string", // Commentaires associés
  "date_created": "yyyy-MM-dd'T'HH:mm:ss", // Date de création
  "date_update": "yyyy-MM-dd'T'HH:mm:ss", // Date de dernière mise à jour
  "status": "UNSTARTED | IN_PROGRESS | ENDED | CANCELLED", // Statut du ticket
  "priority": "LOW | NORMAL | HIGH", // Priorité du ticket
  "request_type": "SUPPORT | FEATURE_REQUEST | BUG_REPORT", // Type de demande
  "source": "EMAIL | PHONE | VISIT | WEB_FORM" // Source du ticket
}
```

## Endpoints

### 1. **GET /ticket**
- **Description :** Récupère tous les tickets.
- **Exemple de requête :**
  ```bash
  curl -X GET http://localhost:8088/ticket -H "Accept: application/json"
  ```
- **Réponse :**
  ```json
  [
    {
      "uuid_ticket": "1234",
      "uuid_client": "5678",
      "title": "Problème de connexion",
      "description": "Impossible de se connecter au portail.",
      "comments": "Contactez le support.",
      "date_created": "2025-01-07T10:00:00",
      "date_update": "2025-01-07T12:00:00",
      "status": "IN_PROGRESS",
      "priority": "HIGH",
      "request_type": "BUG_REPORT",
      "source": "EMAIL"
    }
  ]
  ```

### 2. **GET /ticket/{id}**
- **Description :** Récupère un ticket par son identifiant unique.
- **Exemple de requête :**
  ```bash
  curl -X GET http://localhost:8088/ticket/1234 -H "Accept: application/json"
  ```
- **Réponse :**
  ```json
  {
    "uuid_ticket": "1234",
    "uuid_client": "5678",
    "title": "Problème de connexion",
    "description": "Impossible de se connecter au portail.",
    "comments": "Contactez le support.",
    "date_created": "2025-01-07T10:00:00",
    "date_update": "2025-01-07T12:00:00",
    "status": "IN_PROGRESS",
    "priority": "HIGH",
    "request_type": "BUG_REPORT",
    "source": "EMAIL"
  }
  ```

### 3. **POST /ticket**
- **Description :** Crée un nouveau ticket.
- **Exemple de requête :**
  ```bash
  curl -X POST http://localhost:8088/ticket \
  -H "Content-Type: application/json" \
  -d '{
    "uuid_client": "5678",
    "title": "Nouveau problème",
    "description": "Erreur sur la page de facturation.",
    "comments": "À vérifier rapidement.",
    "date_created": "2025-01-07T14:00:00",
    "status": "UNSTARTED",
    "priority": "NORMAL",
    "request_type": "SUPPORT",
    "source": "WEB_FORM"
  }'
  ```
- **Réponse :**
  ```json
  {
    "uuid_ticket": "5678",
    "uuid_client": "5678",
    "title": "Nouveau problème",
    "description": "Erreur sur la page de facturation.",
    "comments": "À vérifier rapidement.",
    "date_created": "2025-01-07T14:00:00",
    "date_update": null,
    "status": "UNSTARTED",
    "priority": "NORMAL",
    "request_type": "SUPPORT",
    "source": "WEB_FORM"
  }
  ```

### 4. **DELETE /ticket/{id}**
- **Description :** Supprime un ticket par son identifiant.
- **Exemple de requête :**
  ```bash
  curl -X DELETE http://localhost:8088/ticket/1234
  ```

### 5. **PUT /ticket**
- **Description :** Modifie un ticket existant.
- **Exemple de requête :**
  ```bash
  curl -X PUT http://localhost:8088/ticket \
  -H "Content-Type: application/json" \
  -d '{
    "uuid_ticket": "1234",
    "uuid_client": "5678",
    "title": "Problème de connexion (mis à jour)",
    "description": "Mise à jour des détails du problème.",
    "comments": "Problème en cours de traitement.",
    "date_update": "2025-01-07T15:00:00",
    "status": "IN_PROGRESS",
    "priority": "HIGH",
    "request_type": "BUG_REPORT",
    "source": "EMAIL"
  }'
  ```
- **Réponse :**
  ```json
  {
    "uuid_ticket": "1234",
    "uuid_client": "5678",
    "title": "Problème de connexion (mis à jour)",
    "description": "Mise à jour des détails du problème.",
    "comments": "Problème en cours de traitement.",
    "date_created": "2025-01-07T10:00:00",
    "date_update": "2025-01-07T15:00:00",
    "status": "IN_PROGRESS",
    "priority": "HIGH",
    "request_type": "BUG_REPORT",
    "source": "EMAIL"
  }
  ```

### 6. **PUT /ticket/status/{id}**
- **Description :** Modifie uniquement le statut d'un ticket.
- **Exemple de requête :**
  ```bash
  curl -X PUT http://localhost:8088/ticket/status/1234 \
  -H "Content-Type: application/json" \
  -d '"ENDED"'
  ```
- **Réponse :**
  ```json
  {
    "uuid_ticket": "1234",
    "uuid_client": "5678",
    "title": "Problème de connexion",
    "description": "Impossible de se connecter au portail.",
    "comments": "Problème résolu.",
    "date_created": "2025-01-07T10:00:00",
    "date_update": "2025-01-07T15:00:00",
    "status": "ENDED",
    "priority": "HIGH",
    "request_type": "BUG_REPORT",
    "source": "EMAIL"
  }
  ```

### 7. **GET /ticket/user/{userId}/all**
- **Description :** Récupère tous les tickets pour un utilisateur donné.
- **Exemple de requête :**
  ```bash
  curl -X GET http://localhost:8088/ticket/user/5678/all -H "Accept: application/json"
  ```
- **Réponse :**
  ```json
  [
    {
      "uuid_ticket": "1234",
      "uuid_client": "5678",
      "title": "Problème de connexion",
      "description": "Impossible de se connecter au portail.",
      "comments": "Contactez le support.",
      "date_created": "2025-01-07T10:00:00",
      "date_update": "2025-01-07T12:00:00",
      "status": "IN_PROGRESS",
      "priority": "HIGH",
      "request_type": "BUG_REPORT",
      "source": "EMAIL"
    }
  ]
  ```

### 8. **GET /ticket/search**
- **Description :** Recherche des tickets en fonction de critères.
- **Exemple de requête :**
  ```bash
  curl -X GET "http://localhost:8088/ticket/search?status=IN_PROGRESS&priority=HIGH&source=EMAIL&title=connexion" -H "Accept: application/json"
  ```
- **Réponse :**
  ```json
  [
    {
      "uuid_ticket": "1234",
      "uuid_client": "5678",
      "title": "Problème de connexion",
      "description": "Impossible de se connecter au portail.",
      "comments": "Contactez le support.",
      "date_created": "2025-01-07T10:00:00",
      "date_update": "2025-01-07T12:00:00",
      "status": "IN_PROGRESS",
      "priority": "HIGH",
      "request_type": "BUG_REPORT",
      "source": "EMAIL"
    }
  ]
  ```

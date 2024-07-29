# Ajout d'un Hélicoptère dans une Carte de Call of Duty 4: Modern Warfare

Ce guide explique comment ajouter un hélicoptère dans une carte de Call of Duty 4: Modern Warfare en utilisant les Mod Tools.

## Prérequis

- **Mod Tools** pour Call of Duty 4 correctement installés.
- **Fichiers de jeu** accessibles et droits d'administrateur.
- **Connaissances de base** en script et manipulation de fichiers `.map`.

## Étapes Détaillées

### 1. Ouvrir Radiant et Charger la Carte

- Lancez **Radiant**, l'outil d'édition de cartes.
- Chargez la carte (.map) sur laquelle vous souhaitez ajouter l'hélicoptère.

### 2. Ajouter l'Hélicoptère

#### Placer l'Hélicoptère

- Dans Radiant, ouvrez la bibliothèque d'entités.
- Recherchez les modèles d'hélicoptères, tels que `vehicle_helicopter` ou `vehicle_mi24`.
- Placez l'hélicoptère à l'endroit souhaité sur la carte.

#### Positionnement

- Ajustez la position (X, Y, Z) et l'orientation de l'hélicoptère.
- Utilisez les outils de manipulation de Radiant pour placer précisément le modèle.

### 3. Configurer les Propriétés de l'Hélicoptère

#### Script Noteworthy et Targetname

- Dans les propriétés de l'hélicoptère, ajoutez les clés suivantes :
  - `script_noteworthy` : `heli`
  - `targetname` : `heli_spawn`

#### Script Origin

- Placez une entité `script_origin` pour définir le point de départ.
- Associez cette entité à l'hélicoptère via `targetname`.

#### Chemin de l'Hélicoptère

- Utilisez des entités `path_corner` pour définir le chemin :
  - Exemple de configuration :
    - `targetname` : `heli_path1`
    - `target` : `heli_path2`

### 4. Scripting pour l'Hélicoptère

#### Fichier Script (.gsc)

- Créez ou modifiez un fichier script `.gsc` pour votre carte.
- Exemple de script :

```c
heli_setup()
{
    level.heli = getEnt("heli_spawn", "targetname");
    level.heli_path1 = getEnt("heli_path1", "targetname");

    level.heli thread moveToPath(level.heli_path1);
}

moveToPath(path)
{
    while(1)
    {
        self moveto(path.origin, 10);
        path = path.nextpath;
        wait 1;
    }
}

```

### Compilation du Script
Compilez le script et assurez-vous qu'il est correctement intégré à la carte.

### 5. Test de la Carte
Compilez la carte dans Radiant pour générer les fichiers nécessaires (BSP, .d3dbsp, etc.).
Testez la carte en jeu pour vérifier le fonctionnement de l'hélicoptère.

### 6. Débogage et Ajustements
Testez et ajustez les paramètres si nécessaire pour garantir un comportement correct de l'hélicoptère.

### Notes Finales
Sauvegarde Régulière : Assurez-vous de sauvegarder votre travail régulièrement.
Documentation et Ressources : Référez-vous à la documentation des Mod Tools et aux ressources communautaires pour des informations supplémentaires et des conseils.

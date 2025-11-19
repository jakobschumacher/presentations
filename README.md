# Präsentationen von Jakob Schumacher

Diese Website enthält Präsentationen rund um das Thema Infektionsschutz, Gesundheitsschutz und ÖGD.

## Technologie

Die Website wurde von Jekyll zu Hugo migriert und verwendet:
- **Hugo** (Static Site Generator) - Version 0.152.2 extended oder höher
- **Stack Theme** - Card-style Hugo Theme für Blogger
- **Remark.js** - Für interaktive Slide-Präsentationen

## Installation

### Voraussetzungen

Hugo Extended Version muss installiert sein:

```bash
hugo version
```

Das sollte "extended" in der Ausgabe zeigen.

### Theme Installation

Das Stack Theme ist als Git Submodule eingebunden:

```bash
git submodule update --init --recursive
```

## Verwendung

### Lokale Entwicklung

Server starten:

```bash
hugo server
```

Die Website ist dann verfügbar unter: http://localhost:1313/presentations/

### Build für Produktion

```bash
hugo --gc --minify
```

Die fertige Website wird im `public/` Verzeichnis generiert.

## Struktur

- `content/posts/` - Blog-Posts und Präsentationen
- `layouts/_default/presentation.html` - Custom Layout für Remark.js Präsentationen
- `static/assets/` - Statische Assets (PDFs, Bilder, JavaScript)
- `hugo.toml` - Haupt-Konfigurationsdatei
- `themes/hugo-theme-stack/` - Stack Theme (Git Submodule)

## Neue Präsentation erstellen

1. Neue Datei in `content/posts/` erstellen (z.B. `2025-01-15-meine-präsentation.md`)
2. Front Matter hinzufügen:

```yaml
---
layout: presentation
title: "Mein Titel"
subtitle: "Mein Untertitel"
date: 2025-01-15 14:00:00
author: Jakob Schumacher
place: Berlin
course: Kursname
host: Gastgeber
size: medium  # optional: medium für kleinere Schrift
---
```

3. Präsentationsinhalt im Remark.js Format hinzufügen
4. Assets in `static/assets/YYYY-MM-DD-XX/` ablegen

## Legacy Jekyll Dateien

Die ursprünglichen Jekyll-Dateien (`_posts/`, `_layouts/`, etc.) sind noch vorhanden für Referenzzwecke, werden aber nicht mehr verwendet.

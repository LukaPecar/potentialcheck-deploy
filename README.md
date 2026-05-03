# Potentialcheck Landingpage

Dieses Mini-Repo ist nur fuer die veroeffentlichte Landingpage gedacht und deployed automatisch zu GitHub Pages.

## Inhalt

- `public/index.html` - die Live-Seite fuer GitHub Pages
- `public/luka-pecar.jpeg` - oeffentliches Portraitbild
- `.github/workflows/deploy-pages.yml` - automatisches GitHub-Pages-Deployment nach jedem Push auf `main`

## Lokale Aenderungen uebernehmen

Wenn die Arbeitsdatei im Ordner darueber angepasst wurde:

```bash
./sync-local.sh
```

Danach lokal pruefen, committen und pushen:

```bash
git status
git add public/index.html public/luka-pecar.jpeg
git commit -m "Update landing page"
git push
```

Oder alles in einem Schritt:

```bash
./deploy.sh "Update landing page"
```

## GitHub Pages aktivieren

Im GitHub-Repo:

1. `Settings` -> `Pages`
2. Bei `Build and deployment` als Source `GitHub Actions` auswaehlen
3. Speichern
4. Danach deployed jeder Push auf `main` automatisch

Standard-URL:

```text
https://lukapecar.github.io/potentialcheck-deploy/
```

Eine eigene Domain kann spaeter in `Settings` -> `Pages` -> `Custom domain` verbunden werden.


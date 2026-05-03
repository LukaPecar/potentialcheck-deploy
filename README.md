# Potentialcheck Landingpage Deploy

Dieses Mini-Repo ist nur fuer die veroeffentlichte Landingpage gedacht.

## Inhalt

- `public/index.html` - die Live-Seite fuer Hostpoint
- `public/luka-pecar.jpeg` - oeffentliches Portraitbild
- `.github/workflows/deploy-hostpoint.yml` - automatischer Upload zu Hostpoint nach jedem Push auf `main`

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

## GitHub Secrets

In GitHub im Repo unter `Settings` -> `Secrets and variables` -> `Actions` diese Secrets hinterlegen:

- `HOSTPOINT_HOST` - z.B. `sl100.web.hostpoint.ch` oder der Host aus Hostpoint
- `HOSTPOINT_USER` - Haupt-FTP/SSH-Benutzer
- `HOSTPOINT_SSH_KEY` - privater SSH-Key fuer den Hostpoint-Zugang
- `HOSTPOINT_TARGET_DIR` - Zielordner auf Hostpoint, z.B. `/home/USERNAME/www/DOMAIN.ch`
- `HOSTPOINT_PORT` - optional, Standard ist `22`

SSH/SFTP muss im Hostpoint Control Panel aktiviert sein.


# Repo Rules

- For local HTML pages that the user should open from Codex in Google Chrome, always provide a clickable `http://localhost:<port>/<file>.html` URL, not a `file:///...` path.
- Before giving such a link, make sure a local web server is running from the directory that serves that HTML file, so the link opens directly in Chrome from Codex.
- This repo uses a persistent local server on `http://localhost:8876/` via macOS LaunchAgent `com.andriilitvinov.alchemy-site-http`. Prefer links on that base URL for local HTML pages.

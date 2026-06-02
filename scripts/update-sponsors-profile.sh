#!/usr/bin/env bash
# Actualiza la bio de GitHub Sponsors (cuenta personal NeftaliYagua).
# Requiere: gh autenticado y token autorizado para GitHub Sponsors.
# Si falla con FORBIDDEN: https://github.com/settings/applications
# ? GitHub CLI ? Configure ? authorize Sponsors, o pegar bio en el dashboard.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BIO_FILE="${ROOT}/docs/SPONSORS_BIO.md"

if [[ ! -f "$BIO_FILE" ]]; then
  echo "No se encuentra $BIO_FILE" >&2
  exit 1
fi

python3 <<PY
import json, pathlib, subprocess, sys

full = pathlib.Path("${BIO_FILE}").read_text(encoding="utf-8")
payload = {
  "query": """mutation(\$login: String!, \$full: String!, \$email: String!) {
    createSponsorsListing(input: {
      sponsorableLogin: \$login
      fullDescription: \$full
      contactEmail: \$email
    }) {
      sponsorsListing { url fullDescription }
    }
  }""",
  "variables": {
    "login": "NeftaliYagua",
    "full": full,
    "email": "hello@coderic.org",
  },
}
r = subprocess.run(
  ["gh", "api", "graphql", "--input", "-"],
  input=json.dumps(payload).encode(),
  capture_output=True,
)
out = r.stdout.decode()
err = r.stderr.decode()
print(out)
if err:
  print(err, file=sys.stderr)
if r.returncode != 0 or '"errors"' in out:
  sys.exit(1)
print("Bio actualizada en https://github.com/sponsors/NeftaliYagua")
PY

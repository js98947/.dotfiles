#!/usr/bin/env sh
set -eu

PASS_FILE="${HOME}/.dotfiles/.env/encrypt.env"

if ! command -v ansible-vault >/dev/null 2>&1; then
    echo "ERROR: ansible-vault is not in PATH." >&2
    exit 1
fi

if [ ! -f "$PASS_FILE" ]; then
    echo "ERROR: Password file not found: $PASS_FILE" >&2
    exit 1
fi

echo "Scanning for encrypted files in: $(pwd)"

find . -type f ! -path '*/.git/*' ! -path '*/node_modules/*' ! -path '*/.venv/*' | while IFS= read -r file; do
    # Check if the file begins with $ANSIBLE_VAULT;
    if head -n 1 "$file" | grep -q '^$ANSIBLE_VAULT;'; then
        echo "Decrypting: $file"
        if ! ansible-vault decrypt --vault-password-file "$PASS_FILE" "$file"; then
            echo "Failed to decrypt: $file" >&2
        fi
    fi
done

echo "Done."


#!/usr/bin/env bash
# arkenfox-new-profile.sh
# Create a new Firefox profile and apply Arkenfox user.js

set -euo pipefail

# --- Step 1: Generate random profile name ---
PROFILE_NAME="arkenfox_$(tr -dc 'a-z0-9' < /dev/urandom | head -c 8)"

echo "Creating new Firefox profile: $PROFILE_NAME"

# --- Step 2: Create the new profile ---
firefox --headless -CreateProfile "$PROFILE_NAME" >/dev/null 2>&1

# --- Step 3: Locate the profile directory ---
PROFILE_DIR=$(grep -A 1 "\[$PROFILE_NAME\]" ~/.mozilla/firefox/profiles.ini | grep '^Path=' | cut -d= -f2)
PROFILE_DIR="$HOME/.mozilla/firefox/$PROFILE_DIR"

if [ ! -d "$PROFILE_DIR" ]; then
    echo "Error: Failed to locate profile directory."
    exit 1
fi

echo "Profile directory: $PROFILE_DIR"

# --- Step 4: Download latest Arkenfox repository ---
TMP_DIR=$(mktemp -d)
cd "$TMP_DIR"
echo "Downloading latest Arkenfox user.js..."
curl -sLO https://github.com/arkenfox/user.js/archive/refs/heads/master.tar.gz
tar -xzf master.tar.gz --strip-components=1

# --- Step 5: Copy necessary files ---
cp user.js "$PROFILE_DIR/"
cp prefsCleaner.sh "$PROFILE_DIR/"
cp updater.sh "$PROFILE_DIR/"
echo "Copied Arkenfox files to profile."

# --- Step 6: Apply configuration ---
cd "$PROFILE_DIR"
bash updater.sh
echo "Arkenfox configuration applied."

# --- Step 7: Cleanup ---
rm -rf "$TMP_DIR"
echo "Temporary files cleaned up."

# --- Step 8: Finish ---
echo
echo "New Firefox profile created and hardened with Arkenfox."
echo "Profile name: $PROFILE_NAME"
echo "Profile path: $PROFILE_DIR"
echo
echo "You can start Firefox with this profile using:"
echo "  firefox -P \"$PROFILE_NAME\""
echo
echo "To verify, open about:config after launching it."

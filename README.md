# arkenfox-profile-maker

### 🦊 Make Firefox Private. Effortlessly.

Automatically create a new Firefox profile pre-configured with the latest [Arkenfox user.js](https://github.com/arkenfox/user.js) privacy and security settings — all in one simple command.

This script is ideal for Linux users who want a clean, hardened Firefox profile without modifying their existing setup.

## ✨ Features

- 🆕 Creates a **new random-named Firefox profile**
- 🔒 Automatically applies the latest **Arkenfox user.js**
- 🚫 **Does not** touch or modify existing profiles
- 🧠 Detects **system Firefox** and **Flatpak Firefox**
- 💡 Works on any Linux distribution (tested on Fedora)
- ⚙️ Fully automated — no manual input required

## 🧰 Usage

### 1. Clone or download the repository
```bash
git clone https://github.com/sodwing/arkenfox-profile-maker.git
cd arkenfox-profile-maker
````

### 2. Make the script executable

```bash
chmod +x arkenfox-new-profile.sh
```

### 3. Run it

```bash
./arkenfox-new-profile.sh
```

### 4. Launch the hardened Firefox

After completion, the script will display your new profile name and path.

You can start Firefox with:

```bash
firefox -P "arkenfox_<randomid>"
```

Or check it manually:

```bash
firefox --ProfileManager
```

## 🧩 Verification

To verify the configuration:

1. Open `about:config` in Firefox
2. Confirm that:

   ```
   _user.js.parrot' = SUCCESS: No no he's not dead, he's, he's restin'!
   ```
3. Optionally inspect the `user.js` file in your new profile directory.

## 🧩 Compatibility

| Platform                | Supported | Notes                                      |
| ----------------------- | --------- | ------------------------------------------ |
| **Linux (X11/Wayland)** | ✅         | Fully supported                            |
| **Flatpak Firefox**     | ✅         | Auto-detects installation path             |
| **macOS**               | ⚠️        | Untested, minor path edits may be required |
| **Windows**             | ❌         | Not supported                              |

## ⚖️ License

This project is released under the [MIT License](./LICENSE).

## 🙌 Credits

* [Arkenfox user.js](https://github.com/arkenfox/user.js) — main privacy hardening base

## 💬 Feedback

Found a bug or have a suggestion?
Open an issue or submit a pull request!

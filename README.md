# firefox privacy toolkit

### 🦊 Make Firefox Private. Effortlessly.

Automatically create a fully hardened Firefox profile using the latest [Arkenfox user.js](https://github.com/arkenfox/user.js) and optional privacy extensions like uBlock Origin — all in one command and without touching your current Firefox setup.

## ✨ Features

- 🆕 Creates a **new random-named Firefox profile**
- 🔒 Automatically applies the latest **Arkenfox user.js**
- 🧩 Optionally installs privacy extensions like uBlock Origin
- 🚫 **Does not** touch or modify existing profiles
- 🧠 Detects **system Firefox** and **Flatpak Firefox**
- ⚙️ Fully automated — no manual input required

## 🧰 Usage

### 1. Clone or download the repository
```bash
git clone https://github.com/sodwing/firefox-privacy-toolkit.git
```
```
cd firefox-privacy-toolkit
```

### 2. Run it

```bash
./main.sh
```

## 🧩 Verification

To verify the configuration:

1. Open `about:config` in Firefox
2. Confirm that:

   ```
   _user.js.parrot = SUCCESS: No no he's not dead, he's, he's restin'!
   ```
3. Make sure uBlock Origin appears in `about:addons`.

## 🧩 Compatibility

| Platform                | Supported | Notes                                      |
| ----------------------- | --------- | ------------------------------------------ |
| **Linux**               | ✅        | Fully supported                            |
| **macOS**               | ⚠️        | Untested, minor path edits may be required |
| **Windows**             | ❌        | Not supported yet                          |

## ⚖️ License

This project is released under the [MIT License](./LICENSE).

## 🙌 Credits

* [Arkenfox user.js](https://github.com/arkenfox/user.js) — main privacy hardening base

## 💬 Feedback

Found a bug or have a suggestion?
Open an issue or submit a pull request!

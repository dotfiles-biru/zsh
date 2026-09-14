# Dotfiles Professionalization TODO List

## 1. Migrasi ke GNU Stow (Dotfile Manager)
- [ ] Install `stow` (`sudo apt install stow`).
- [ ] Refactor struktur folder agar kompatibel dengan stow (pindahkan ke `~/dotfiles-biru/stow/zsh/`).
- [ ] Hapus/ganti skrip `install.sh` manual dengan perintah `stow zsh`.

## 2. Standardisasi XDG Base Directory
- [ ] Pastikan semua konfigurasi (nvim, tmux, dll) mengikuti standar `$XDG_CONFIG_HOME` (`~/.config/`).
- [ ] Pastikan Zsh menggunakan `$ZDOTDIR` agar tidak ada file konfigurasi di root `~/`.

## 3. Implementasi Tool-Version Manager (mise)
- [ ] Install [mise](https://mise.jdx.dev/) untuk menggantikan `fnm`.
- [ ] Konfigurasi `mise` di `zsh` untuk otomatis mendeteksi `.mise.toml` di root proyek.

## 4. Error Tracking & Logging (Hooks)
- [ ] Implementasikan `precmd` & `preexec` hook di `~/dotfiles-biru/zsh/zsh.d/03-functions.zsh`.
- [ ] Logging command exit status ke `~/.cache/shell_history.log`.

## 5. Persiapan Transisi ke NixOS (Home Manager)
- [ ] Inventarisasi semua file konfigurasi yang akan dipindahkan ke Home Manager.
- [ ] Pelajari dasar sintaks Nix untuk Home Manager.
- [ ] Eksperimen membuat modul Nix sederhana untuk salah satu aplikasi (misalnya: `zsh`).

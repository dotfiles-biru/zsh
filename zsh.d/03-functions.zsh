# Automatically list directory contents upon changing directories
cd() {
  builtin cd "$@" && eza
}

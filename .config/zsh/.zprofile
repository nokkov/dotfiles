path=("$HOME/.local/bin" $path)
path=("$HOME/.cargo/bin" $path)
path=("$HOME/.krew/bin" $path)
path=("/usr/local/go/bin" "$HOME/go/bin" $path)

export PATH

if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = "1" ]; then
    exec dbus-run-session sway --unsupported-gpu
fi

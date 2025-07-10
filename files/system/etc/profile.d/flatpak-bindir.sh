if [ -n "$XDG_DATA_HOME" ] && [ -d "$XDG_DATA_HOME/flatpak/exports/bin" ]; then
    pathmunge "$XDG_DATA_HOME/flatpak/exports/bin" after
    elif [ -n "$HOME" ] && [ -d "$HOME/.local/share/flatpak/exports/bin" ]; then
    pathmunge "$HOME/.local/share/flatpak/exports/bin" after
fi

if [ -d /var/lib/flatpak/exports/bin ]; then
    pathmunge /var/lib/flatpak/exports/bin after
fi

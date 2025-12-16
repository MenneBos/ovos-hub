#!/usr/bin/env bash
set -euo pipefail

# Install skills via pip command when a setup.py exists
skills_list="${HOME}/.config/mycroft/skills.list"
skills_list_state="${HOME}/.local/state/mycroft/skills.state"

if [[ -f "$skills_list" ]]; then
    if ! diff -q -B <(grep -vE '^\s*(#|$)' "$skills_list") <(grep -vE '^\s*(#|$)' "$skills_list_state" 2>/dev/null) &>/dev/null; then
        echo "Installing skills from $skills_list"
        uv pip install -r "$skills_list"
        cp "$skills_list" "$skills_list_state"
    fi
fi

# Auto-detect which sound server is running (PipeWire or PulseAudio)
asoundrc_file="${HOME}/.asoundrc"
mycroft_asoundrc="${HOME}/.config/mycroft/asoundrc"

if [[ -f "$mycroft_asoundrc" ]]; then
    cp "$mycroft_asoundrc" "$asoundrc_file"
else
    if pw-link --links &>/dev/null; then
        echo "Configuring for PipeWire"
        printf 'pcm.!default pipewire\nctl.!default pipewire\n' >"$asoundrc_file"
    elif pactl info &>/dev/null; then
        echo "Configuring for PulseAudio"
        printf 'pcm.!default pulse\nctl.!default pulse\n' >"$asoundrc_file"
    fi
fi

# Run ovos-core
echo "Starting ovos-core"
exec ovos-core

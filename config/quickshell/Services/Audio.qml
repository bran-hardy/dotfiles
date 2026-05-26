pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Services.Pipewire

Singleton {
    id: root

    readonly property PwNode sink: Pipewire.defaultAudioSink
    readonly property real volume: sink.audio?.volume ?? 0
    readonly property bool muted: sink.audio?.muted ?? false

    PwObjectTracker {
        objects: [ root.sink ]
    }

    function getIcon(): string {
        if (muted) return "volume_off"
        if (volume === 0) return "volume_mute"
        if (volume < 0.5) return "volume_down"
        return "volume_up"
    }
}

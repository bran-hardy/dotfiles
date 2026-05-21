import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.Pipewire

import qs.Services

Item {
    id: root

    readonly property real volume: Audio.volume
    readonly property bool muted: Audio.muted

    readonly property string icon: {
        if (muted) return ""
        if (volume === 0) return ""
        if (volume < 0.5) return ""
        return ""
    }

    readonly property string label: muted ? "Muted" : Math.round(volume * 100) + "%"

    implicitHeight: parent.implicitHeight
    implicitWidth: 20

    RowLayout {
        id: bounds

        anchors.fill: parent

        spacing: 4

        /*
        Text {
            anchors.verticalCenter: parent.verticalCenter
            font {
                weight: 700
                pixelSize: 14
            }

            color: Colors.colors.primary
            text: root.label
        }
        */

        Text {
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
            }
            font {
                weight: 700
                pixelSize: 16
            }

            color: Colors.colors.primary
            text: root.icon
        }
    }
}

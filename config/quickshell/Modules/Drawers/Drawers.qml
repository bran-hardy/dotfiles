import QtQuick
import Quickshell

import "Bar"

Variants {
    model: Quickshell.screens
    delegate: PanelWindow {
        id: window

        screen: modelData

        anchors {
            left: true
            top: true
            right: true
        }

        implicitHeight: bar.implicitHeight
        exclusionMode: ExlusionMode.Exclusive

        color: "transparent"

        Bar {
            id: bar
            anchors.fill: parent
        }
    }
}
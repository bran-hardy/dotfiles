import QtQuick
import Quickshell

import "Bar"

Variants {
    model: Quickshell.screens
    delegate: PanelWindow {
        id: window

        anchors {
            left: true
            top: true
            right: true
        }

        Bar {
            id: bar
        }
    }
}

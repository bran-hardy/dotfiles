import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.Services

RowLayout {
    layoutDirection: Qt.RightToLeft
    spacing: 16

    // Clock
    // Should be put into sepearte module file for global use
    Text {
        id: clock

        color: Colors.staticColors.text
        font {
            weight: 700
        }

        text: Qt.formatDateTime(new Date(), "ddd, MMM dd - HH:mm")
        Timer {
            interval: 1000
            running: true
            repeat: true
            onTriggered: clock.text = Qt.formatDateTime(new Date(), "ddd, MMM dd - HH:mm")
        }
    }
}

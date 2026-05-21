import QtQuick

import qs.Services
import qs.Utilities

Item {
    id: root

    implicitWidth: text.implicitWidth
    implicitHeight: parent.implicitHeight

    Text {
        id: text

        anchors {
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
        font {
            weight: 700
            pixelSize: 14
        }

        color: Colors.colors.primary
        text: Qt.formatDateTime(Time?.date, "HH:mm AP")
    }
}
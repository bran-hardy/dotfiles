import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.Services
import qs.Graphics.Components

Rectangle {
    id: pill

    property int padding: Styles.padding.sm

    color: Colors.colors.primary
    implicitWidth: pillContent.childrenRect.width + padding * 2
    height: parent.height - padding * 2
    radius: Styles.rounding.sm

    Behavior on implicitWidth {
        NumberAnimation {
            duration: 100
            easing.type: Easing.InOutCubic
        }
    }

    RowLayout {
        id: pillContent

        spacing: Styles.spacing.sm
        anchors.centerIn: parent

        Icon {
            icon: Battery.getIcon()
            color: Colors.colors.background
        }

        Text {
            anchors.verticalCenter: parent.verticalCenter
            color: Colors.colors.background
            font.weight: 700
            font.pixelSize: 12
            text: Battery.percentage + "%"
        }
    }
}
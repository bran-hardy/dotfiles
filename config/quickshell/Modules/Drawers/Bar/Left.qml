import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.Services

RowLayout {
    id: root

    anchors {
        fill: parent
        leftMargin: 16
    }

    // required property ShellScreen moniter

    spacing: 16

    // Workplace buttons
    // Should be moved to dedicated Module file
    Repeater {
        model: 5

        Rectangle {
            id: rect

            property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)

            width: 30
            height: 30
            radius: 8

            Behavior on color {
                ColorAnimation { duration: 200 }
            }

            color: isActive ? Colors.staticColors.accent : "transparent"

            Text {
                anchors.centerIn: parent
                text: (index + 1)
                color: rect.isActive ? Colors.staticColors.background : Colors.staticColors.muted
                font { pixelSize: 14; weight: 700; }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: Hyprland.dispatch("workspace " + (index + 1))
                }
            }
        }
    }

    Item {
        Layout.fillWidth: true
    }
}

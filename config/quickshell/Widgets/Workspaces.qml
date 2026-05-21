import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

import qs.Services

Item {
    id: root

    implicitWidth: row.implicitWidth
    implicitHeight: parent.implicitHeight

    RowLayout {
        id: row

        anchors.fill: parent
        spacing: 4

        Repeater {
            model: 5
            Rectangle {
                id: workspace

                readonly property int workspaceId: index + 1
                readonly property bool isActive: Hyprland.focusedWorkspace?.id === workspaceId

                width: 30
                height: 16
                radius: 3

                anchors.verticalCenter: parent.verticalCenter

                Behavior on color {
                    ColorAnimation { duration: 100 }
                }

                color: isActive ? Colors.colors.primary : hover.hovered ? Colors.colors.primary_fixed_dim : Colors.colors.surface_bright

                HoverHandler {
                    id: hover
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: {
                        Hyprland.dispatch(`hl.dsp.focus({workspace = ${workspace.workspaceId}})`);
                    }
                }
            }
        }
    }
}

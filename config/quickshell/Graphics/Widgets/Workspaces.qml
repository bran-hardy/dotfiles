import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

import qs.Services
import qs.Configs

Item {
    id: root

    width: container.implicitWidth
    height: parent.height

    RowLayout {
        id: container

        anchors.fill: parent
        spacing: Styles.spacing.md

        Repeater {
            model: Configs.bar.persistantWorkspaces

            Rectangle {
                id: workspace

                readonly property int workspaceId: index + 1
                readonly property bool isActive: Hyprland.focusedWorkspace?.id === workspaceId

                implicitWidth: 32
                implicitHeight: 32
                radius: Styles.rounding.sm

                anchors.verticalCenter: parent.verticalCenter

                Behavior on color {
                    ColorAnimation { duration: 100 }
                }

                Behavior on implicitWidth {
                    NumberAnimation {
                        duration: 100
                        easing.type: Easing.InOutCubic
                    }
                }

                Behavior on implicitHeight {
                    NumberAnimation {
                        duration: 100
                        easing.type: Easing.InOutCubic
                    }
                }

                color: isActive ? Colors.colors.primary : hover.hovered ? Colors.colors.surface_bright : "transparent"

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

                Text {
                    anchors.centerIn: workspace
                    color: workspace.isActive ? Colors.colors.background : Colors.colors.primary
                    font.weight: 700
                    font.pixelSize: 12
                    text: workspace.workspaceId
                }
            }
        }
    }
}
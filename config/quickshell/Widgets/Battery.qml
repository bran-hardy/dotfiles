import QtQuick
import Quickshell.Services.UPower

import qs.Services

Item {
    id: root

    property int batteryWidth: 32
    property int batteryHeight: 16

    readonly property bool charging: UPower.displayDevice.state == UPowerDeviceState.Charging
    readonly property real percentage: UPower.displayDevice.percentage * 100
    readonly property real fill: (batteryWidth - 4) * (percentage / 100.0)

    implicitWidth: batteryWidth + 4
    implicitHeight: batteryHeight

    Rectangle {
        id: batteryBody

        implicitWidth: root.batteryWidth
        implicitHeight: root.batteryHeight
        clip: false

        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
        }
        border {
            width: 2
            color: Colors.colors.primary
        }

        radius: 3
        color: "transparent"

        Text {
            text: root.percentage
            color: Colors.colors.primary

            anchors {
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }

            font {
                weight: 700
                pixelSize: 12
            }
        }

        Rectangle {
            id: batteryFillClip

            implicitWidth: root.fill
            implicitHeight: parent.height-4
            clip: true

            anchors {
                left: parent.left
                top: parent.top
                leftMargin: 2
                topMargin: 2
            }

            color: Colors.colors.primary

            Text {
                text: root.percentage
                color: Colors.staticColors.background
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

                width: root.batteryWidth-4
                height: root.batteryHeight-4

                font {
                    weight: 700
                    pixelSize: 12
                }
            }
        }
    }

    Rectangle {
        id: batteryTip

        implicitWidth: 2
        implicitHeight: 6

        radius: 6
        color: Colors.colors.primary

        anchors {
            right: parent.right
            verticalCenter: parent.verticalCenter
        }
    }
}

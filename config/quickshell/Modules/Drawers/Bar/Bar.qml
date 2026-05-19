import QtQuick
import Quickshell.Widgets

WrapperItem {
    implicitWidth: parent.width
    implicitHeight: 48

    anchors {
        top: parent.top
        horizontalCenter: parent.horizontalCenter
    }

    WrapperRectangle {
        radius: 0
        color: "transparent"

        Loader {
            active: true
            asynchronous: false
            sourceComponent: Item {
                anchors {
                    fill: parent
                    leftMargin: 5
                    rightMargin: 5
                }

                Left {
                    implicitHeight: parent.height
                    implicitWidth: parent.width / 6

                    anchors {
                        left: parent.left
                        verticalCenter: parent.verticalCenter
                    }
                }

                Right {
                    implicitHeight: parent.height
                    implicitWidth: parent.width / 6

                    anchors {
                        left: parent.right
                        verticalCenter: parent.verticalCenter
                    }
                }
            }
        }
    }
}

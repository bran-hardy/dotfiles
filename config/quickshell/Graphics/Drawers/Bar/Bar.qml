import QtQuick
import QtQuick.Layouts
import Quickshell.Widgets

import qs.Configs
import qs.Services

WrapperItem {
    implicitWidth: parent.width

    anchors {
        top: parent.top
        horizontalCenter: parent.horizontalCenter
    }

    WrapperRectangle {
        color: "transparent"

        Loader {
            id: root

            active: true
            asynchronous: false
            sourceComponent: RowLayout {
                anchors {
                    fill: parent
                    leftMargin: 0
                    rightMargin: 0
                }

                Left {
                    Layout.preferredWidth: parent.width * 0.4
                    Layout.fillHeight: true

                    anchors {
                        left: parent.left
                        verticalCenter: parent.verticalCenter
                    }
                }

                Center {
                    Layout.preferredWidth: parent.width * 0.2
                    Layout.fillHeight: true

                    anchors {
                        verticalCenter: parent.verticalCenter
                    }
                }

                Right {
                    Layout.preferredWidth: parent.width * 0.4
                    Layout.fillHeight: true

                    anchors {
                        right: parent.right
                        bottom: parent.bottom
                    }
                }
            }
        }
    }
}
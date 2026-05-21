import QtQuick

import qs.Services

Rectangle {
    id: root

    implicitHeight: 40
    color: Colors.colors.background

    Left {
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
            leftMargin: 8
        }
    }

    Center {
        anchors {
            top: parent.top
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            leftMargin: 8
            rightMargin: 8
        }
    }

    Right {
        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            rightMargin: 8
        }
    }
}
import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.Services
import qs.Configs

Rectangle {
    id: pill

    property int padding: Styles.padding.md

    color: Colors.colors.background
    implicitWidth: pillContent.childrenRect.width + padding * 2
    height: Configs.bar.barHeight
    radius: Styles.rounding.md

    


    default property alias content: pillContent.children

    RowLayout {
        id: pillContent

        spacing: Styles.spacing.md
        anchors.centerIn: parent

        anchors {
            fill: parent
            leftMargin: pill.padding
            rightMargin: pill.padding
        }
    }
}
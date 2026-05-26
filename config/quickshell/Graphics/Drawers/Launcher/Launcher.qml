import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets

import qs.Services

Item {
    id: root

    anchors {
        top: parent.top
        horizontalCenter: parent.horizontalCenter

    }

    property bool currentIndex: 0

    implicitWidth: parent.width * 0.4
    implicitHeight: parent.height * 0.5

    function launchApp(entry: DesktopEntry): void {
        
    }

    WrapperRectangle {
        anchors.fill: parent
        radius: 0
        color: Colors.colors.background

        Loader {
            active: true
            asynchronous: true
            sourceComponent: ColumnLayout {
                anchors.fill: parent
                anchros.margins: Styles.margin.lg

                Timer {
                    id: searchDebounce

                    interval: 80
                    repeat: false
                    onTriggered {
                        listView.currentIndex: listView.count > 0 ? 0 : -1
                        listView.positionViewAtBeginning()
                    }
                }

                TextInput {
                    id: search
                }

                ListView {
                    id: listView

                    //property var searchResults: SearchEngine.searchApps(DesktopEntries.applications.values, search.text)
                }
            }
        }
    }
}
pragma ComponentBehavior: Bound
pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

import qs.Core.Configs

Singleton {
    id: root

    readonly property StaticColorTemplateComponent staticColors: StaticColorTemplateComponent {}

    readonly property var staticTemplateColors: JSON.parse(staticColorsFile.text())

    FileView {
        id: staticColorsFile

        path: Configs.color.staticColorsPath
        watchChanges: true
        onFileChanged: reload()
    }

    component StaticColorTemplateComponent : QtObject {
        readonly property color background: root.staticTemplateColor.background
        readonly property color surface: root.staticTemplateColor.surface
        readonly property color muted: root.staticTemplateColor.muted
        readonly property color text: root.staticTemplateColor.text
        readonly property color accent: root.staticTemplateColor.accent
    }
}

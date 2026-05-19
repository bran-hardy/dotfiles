pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: root

    readonly property string home: Quickshell.env("HOME")

    readonly property string configDir: Quickshell.env("XDR_CONFIG_HOME") || `${home}/.config`
    readonly property string shellDir: `${configDir}/quickshell`
}

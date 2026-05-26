pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: root

    readonly property string home: Quickshell.env("HOME")
    
    readonly property string dirRoot: Quickshell.shellDir
    readonly property string dirConfig: Quickshell.env("XDG_CONFIG_DIR") || `${home}/.config`
    readonly property string dirShell: `${dirConfig}/quickshell`
    readonly property string dirState: `${home}/.local/state`

    readonly property string pictures: Quickshell.env("XDG_PICTURES_DIR") || `${home}/Pictures`
    readonly property string vidoes: Quickshell.env("XDG_VIDEOS_DIR") || `${home}/Videos`

    readonly property string wallpapers: `${pictures}/Wallpapers`
}
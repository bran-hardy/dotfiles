pragma Singleton

import Quickshell
import Quickshell.Io

Singleton {
    id: root

    property string colors: `${Quickshell.env("HOME")}/.config/quickshell/Data/matugen/colors-dark.json`
}
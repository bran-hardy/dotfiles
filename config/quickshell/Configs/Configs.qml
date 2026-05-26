pragma Singleton

import Quickshell
import Quickshell.Io

import qs.Utilities

Singleton {
    id: root

    property alias bar: adapter.bar
    property alias colors: adapter.colors
    property alias styles: adapter.styles

    FileView {
        path: Paths.dirShell + "/Data/configurations.json"
        watchChanges: true
        onFileChanged: reload()

        onAdapterUpdated: writeAdapter()

        JsonAdapter {
            id: adapter

            property BarConfig bar: BarConfig {}
            property ColorsConfig colors: ColorsConfig {}
            property StylesConfig styles: StylesConfig {}
        }
    }
}
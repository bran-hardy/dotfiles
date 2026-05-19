pragma Singleton

import Quickshell
import Quickshell.Io

import qs.Core.Utils

Singleton {
    id: root

    property alias colors: adapter.colors

    FileView {
        path: Paths.shellDir + "/configurations.json"
        watchChanges: true
        onFileChanged: reload()

        onAdapterChanged: writeAdapter()

        JsonAdapter {
            id: adapter

            property ColorSystemConfig colors: ColorSystemConfig {}
        }
    }
}

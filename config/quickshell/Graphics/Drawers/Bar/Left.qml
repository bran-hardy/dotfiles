import QtQuick
import QtQuick.Layouts

import qs.Services
import qs.Configs
import qs.Graphics.Widgets
import qs.Graphics.Components

RowLayout {
    id: root

    Pill {
        Workspaces {}
    }

    Item { Layout.fillWidth: true }
}
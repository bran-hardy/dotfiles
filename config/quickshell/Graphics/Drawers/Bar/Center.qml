import QtQuick
import QtQuick.Layouts

import qs.Services
import qs.Configs
import qs.Graphics.Components
import qs.Graphics.Widgets

RowLayout {
    id: root

    Item { Layout.fillWidth: true }

    Pill {
        Clock {}
    }

    Pill {
        Icon {
            icon: "notifications"
            color: Colors.colors.primary
            font.pixelSize: 20
        }
    }

    Item { Layout.fillWidth: true }
}
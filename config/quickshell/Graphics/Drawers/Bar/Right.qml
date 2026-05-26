import QtQuick
import QtQuick.Layouts

import qs.Services
import qs.Graphics.Components
import qs.Graphics.Widgets

RowLayout {
    id: root

    Item { Layout.fillWidth: true }

    Pill {
        Sound {}
        Battery {}
    }

    Pill {
        Icon {
            icon: "mode_off_on"
            color: Colors.colors.primary
            font.pixelSize: 20
        }
    }
}
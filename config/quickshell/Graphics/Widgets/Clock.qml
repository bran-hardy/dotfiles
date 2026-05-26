import QtQuick

import qs.Services
import qs.Utilities

Text {
    id: text

    font {
        weight: 700
        pixelSize: 14
    }

    color: Colors.colors.primary
    text: Qt.formatDateTime(Time?.date, "HH:mm AP")
}
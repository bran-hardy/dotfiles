pragma Singleton

import QtQuick
import Quickshell

import qs.Configs

Singleton {
    id: root

    property StylesConfig.Fonts fonts: Configs.styles.fonts

    property StylesConfig.Spacing spacing: Configs.styles.general.spacing
    property StylesConfig.Margin margin: Configs.styles.general.margin
    property StylesConfig.Padding padding: Configs.styles.general.padding
    property StylesConfig.Rounding rounding: Configs.styles.general.rounding
}
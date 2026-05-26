pragma ComponentBehavior: Bound
pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

import qs.Configs
import qs.Utilities

Singleton {
    id: root

    readonly property MatugenColorTemplateComponent matugenColors: MatugenColorTemplateComponent {}

    readonly property var matugenTemplateColors: JSON.parse(matugenColorsFile.text())

    readonly property TemplateColors colors: matugenColors

    FileView {
        id: matugenColorsFile

        path: Configs.colors.pathForDark //Paths.dirShell + "/Data/colors-dark.json"
        watchChanges: true
        onFileChanged: reload()
    }

    component MatugenColorTemplateComponent : TemplateColors {
        readonly property color background: root.matugenTemplateColors.colors.background

        readonly property color surface: root.matugenTemplateColors.colors.surface
        readonly property color surface_bright: root.matugenTemplateColors.colors.surface_bright
        readonly property color surface_container: root.matugenTemplateColors.colors.surface_container
        readonly property color surface_container_high: root.matugenTemplateColors.colors.surface_container_high
        readonly property color surface_container_highest: root.matugenTemplateColors.colors.surface_container_highest
        readonly property color surface_container_low: root.matugenTemplateColors.colors.surface_container_low
        readonly property color surface_container_lowest: root.matugenTemplateColors.colors.surface_container_lowest
        readonly property color surface_dim: root.matugenTemplateColors.colors.surface_dim
        readonly property color surface_tint: root.matugenTemplateColors.colors.surface_tint
        readonly property color surface_variant: root.matugenTemplateColors.colors.surface_variant

        readonly property color tertiary: root.matugenTemplateColors.colors.tertiary
        readonly property color tertiary_container: root.matugenTemplateColors.colors.tertiary_container
        readonly property color tertiary_fixed: root.matugenTemplateColors.colors.tertiary_fixed
        readonly property color tertiary_fixed_dim: root.matugenTemplateColors.colors.tertiary_fixed_dim

        readonly property color primary: root.matugenTemplateColors.colors.primary
        readonly property color primary_container: root.matugenTemplateColors.colors.primary_container
        readonly property color primary_fixed: root.matugenTemplateColors.colors.primary_fixed
        readonly property color primary_fixed_dim: root.matugenTemplateColors.colors.primary_fixed_dim

        readonly property color secondary: root.matugenTemplateColors.colors.secondary
        readonly property color secondary_container: root.matugenTemplateColors.colors.secondary_container
        readonly property color secondary_fixed: root.matugenTemplateColors.colors.secondary_fixed
        readonly property color secondary_fixed_dim: root.matugenTemplateColors.colors.econdary_fixed_dim

        readonly property color scrim: root.matugenTemplateColors.colors.scrim

        readonly property color outline: root.matugenTemplateColors.colors.outline
        readonly property color outline_variant: root.matugenTemplateColors.colors.outline_variant

        readonly property color shadow: root.matugenTemplateColors.colors.shadow

        readonly property color source_color: root.matugenTemplateColors.colors.source_color

        readonly property color error: root.matugenTemplateColors.colors.error
        readonly property color error_container: root.matugenTemplateColors.colors.error_container

        readonly property color on_background: root.matugenTemplateColors.colors.on_background
        readonly property color on_error: root.matugenTemplateColors.colors.on_error
        readonly property color on_error_container: root.matugenTemplateColors.colors.on_error_container
        readonly property color on_primary: root.matugenTemplateColors.colors.on_primary
        readonly property color on_primary_container: root.matugenTemplateColors.colors.on_primary_container
        readonly property color on_primary_fixed: root.matugenTemplateColors.colors.colors.on_primary_fixed
        readonly property color on_primary_fixed_variant: root.matugenTemplateColors.colors.on_primary_fixed_variant
        readonly property color on_secondary: root.matugenTemplateColors.colors.on_secondary
        readonly property color on_secondary_container: root.matugenTemplateColors.colors.on_secondary_container
        readonly property color on_secondary_fixed: root.matugenTemplateColors.colors.on_secondary_fixed
        readonly property color on_secondary_fixed_variant: root.matugenTemplateColors.colors.on_secondary_fixed_variant
        readonly property color on_surface: root.matugenTemplateColors.colors.on_surface
        readonly property color on_surface_variant: root.matugenTemplateColors.colors.on_surface_variant
        readonly property color on_tertiary: root.matugenTemplateColors.colors.on_tertiary
        readonly property color on_tertiary_container: root.matugenTemplateColors.colors.on_tertiary_container
        readonly property color on_tertiary_fixed: root.matugenTemplateColors.colors.on_tertiary_fixed
        readonly property color on_tertiary_fixed_variant: root.matugenTemplateColors.colors.on_tertiary_fixed_variant

        readonly property color inverse_on_surface: root.matugenTemplateColors.colors.inverse_on_surface
        readonly property color inverse_primary: root.matugenTemplateColors.colors.inverse_primary
        readonly property color inverse_surface: root.matugenTemplateColors.colors.inverse_surface
    }

    component TemplateColors : QtObject {
        readonly property color background: "transparent"

        readonly property color surface: "transparent"
        readonly property color surface_bright: "transparent"
        readonly property color surface_container: "transparent"
        readonly property color surface_container_high: "transparent"
        readonly property color surface_container_highest: "transparent"
        readonly property color surface_container_low: "transparent"
        readonly property color surface_container_lowest: "transparent"
        readonly property color surface_dim: "transparent"
        readonly property color surface_tint: "transparent"
        readonly property color surface_variant: "transparent"

        readonly property color tertiary: "transparent"
        readonly property color tertiary_container: "transparent"
        readonly property color tertiary_fixed: "transparent"
        readonly property color tertiary_fixed_dim: "transparent"

        readonly property color primary: "transparent"
        readonly property color primary_container: "transparent"
        readonly property color primary_fixed: "transparent"
        readonly property color primary_fixed_dim: "transparent"

        readonly property color secondary: "transparent"
        readonly property color secondary_container: "transparent"
        readonly property color secondary_fixed: "transparent"
        readonly property color secondary_fixed_dim: "transparent"

        readonly property color scrim: "transparent"

        readonly property color outline: "transparent"
        readonly property color outline_variant: "transparent"

        readonly property color shadow: "transparent"

        readonly property color source_color: "transparent"

        readonly property color error: "transparent"
        readonly property color error_container: "transparent"

        readonly property color on_background: "transparent"
        readonly property color on_error: "transparent"
        readonly property color on_error_container: "transparent"
        readonly property color on_primary: "transparent"
        readonly property color on_primary_container: "transparent"
        readonly property color on_primary_fixed: "transparent"
        readonly property color on_primary_fixed_variant: "transparent"
        readonly property color on_secondary: "transparent"
        readonly property color on_secondary_container: "transparent"
        readonly property color on_secondary_fixed: "transparent"
        readonly property color on_secondary_fixed_variant: "transparent"
        readonly property color on_surface: "transparent"
        readonly property color on_surface_variant: "transparent"
        readonly property color on_tertiary: "transparent"
        readonly property color on_tertiary_container: "transparent"
        readonly property color on_tertiary_fixed: "transparent"
        readonly property color on_tertiary_fixed_variant: "transparent"

        readonly property color inverse_on_surface: "transparent"
        readonly property color inverse_primary: "transparent"
        readonly property color inverse_surface: "transparent"
    }
}

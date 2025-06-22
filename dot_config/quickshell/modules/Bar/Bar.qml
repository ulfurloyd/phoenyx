import Quickshell
import "modules" as Modules

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      property var modelData
      screen: modelData

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 30

      Modules.ClockWidget {
        anchors.centerIn: parent
      }
    }
  }
}

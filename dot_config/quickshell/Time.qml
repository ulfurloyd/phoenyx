// Time.qml

// with this line our type becomes a singleton
pragma Singleton

import Quickshell
import QtQuick

// your singletons should always have Singleton as the type
Singleton {
  id: root
  readonly property string time: {
      Qt.formatDateTime(clock.date, "ddd MMM d hh:mm AP t yyyy")
  }

  SystemClock {
      id: clock
      precision: SystemClock.Seconds
  }
}

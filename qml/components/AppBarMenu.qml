import QtQuick 2.0
import Sailfish.Silica 1.0
import Aurora.Controls 1.0


    AppBar {
        id: topAppBar
        headerText: qsTr("SailOTP")
//        if (namePage===2)
//        headerText: qsTr("Satellite signal strengths")
//        if (namePage===3)
//        headerText: qsTr("GPSInfo3")

        headerClickable: false
        visible: opacity > 0
        Behavior on opacity { FadeAnimation {} }


               ProgressBar {
                 id: updateProgress
                 anchors.topMargin: Theme.paddingSmall
                 anchors.top: parent.top
                 anchors.bottom: parent.bottom
                 height: parent.height
                 width: parent.width * 0.65
                 maximumValue: 29
                 value: 39 - seconds_global
                 // Only show when there are enries
                 visible: appWin.listModel.count
               }
               AppBarSpacer {}

                AppBarButton {
                  id: appBarMenuButton
                  icon.source: "image://theme/icon-m-menu"
                  onClicked: mainPopup.open()

                  PopupMenu {
                      id: mainPopup

                          PopupMenuItem {
                              text: qsTr("About")
                              onClicked: pageStack.push(Qt.resolvedUrl("../pages/About.qml"))
                          }
                          PopupMenuItem {
                            text: qsTr("Settings")
                            visible: true
                            onClicked: pageStack.push(Qt.resolvedUrl("../pages/Settings.qml"))
                          }
                          PopupMenuItem {
                            text: qsTr("Export / Import")
                            onClicked: pageStack.push(Qt.resolvedUrl("../pages/ExportPage.qml"), {parentPage: mainPage, mode: "export"})
                          }
                          PopupMenuItem {
                            text: qsTr("Add Token")
                            onClicked: pageStack.push(Qt.resolvedUrl("../pages/ScanOTP.qml"), {parentPage: mainPage})
                          }
                    }
              }

          }



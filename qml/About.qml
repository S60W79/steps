/*
* Copyright (C) 2023  Javad Rahimipour Anaraki
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; version 3.
*
* steps is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.4
import Lomiri.Components 1.3

Page {
  id: aboutPage

  header: PageHeader {
    title: i18n.tr("About")
  }

  ScrollView {
    id: scrollView
    anchors {
      top: aboutPage.header.bottom
      bottom: parent.bottom
      left: parent.left
      right: parent.right
      leftMargin: units.gu(2)
      rightMargin: units.gu(2)
    }

    clip: true

    Column {
      id: aboutColumn
      spacing: units.gu(2)
      width: scrollView.width

      Label {
        anchors.horizontalCenter: parent.horizontalCenter
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        text: i18n.tr("Steps")
        fontSize: "x-large"
      }

      LomiriShape {
        width: units.gu(12); height: units.gu(12)
        anchors.horizontalCenter: parent.horizontalCenter
        radius: "medium"
        image: Image {
          source: Qt.resolvedUrl("../assets/logo.png")
        }
      }

      Label {
        width: parent.width
        linkColor: LomiriColors.orange
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        text: i18n.tr("Version %1").arg(Qt.application.version)
      }

      Label {
        width: parent.width
        linkColor: LomiriColors.orange
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        text: i18n.tr("This application counts your steps based on accelerometer data and calculates travelled distance based on computed stride length using the user's demographic information.")
      }

      Label {
        width: parent.width
        linkColor: LomiriColors.orange
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        //TRANSLATORS: Please make sure the URLs are correct
        text: i18n.tr("This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the <a href='https://www.gnu.org/licenses/gpl-3.0.en.html'>GNU General Public License</a> for more details.")
        onLinkActivated: Qt.openUrlExternally(link)
      }

      Label {
        width: parent.width
        linkColor: LomiriColors.orange
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        text: "<a href='https://github.com/jranaraki/steps/'>" + i18n.tr("SOURCE") + "</a> | <a href='https://github.com/jranaraki/steps/issues'>" + i18n.tr("ISSUES") + "</a> | <a href='https://paypal.me/jranaraki'>" + i18n.tr("DONATE") + "</a>"
        onLinkActivated: Qt.openUrlExternally(link)
      }

      Label {
        width: parent.width
        linkColor: LomiriColors.orange
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        style: Font.Bold
        text: i18n.tr("Copyright") + " (c) 2023 Javad Rahimipour Anaraki <jrahimipour@pm.me>"
      }
    }
  }
}

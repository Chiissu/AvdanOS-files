import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import PinnedListModel 1.0
Rectangle {
    color:"#00000000"
    Label {
        font.family: 'Product Sans'
        text:"Pinned"
        color:"white"
        x:0
        y:0
        font.pixelSize: 17
        font.bold: true
    }
    GridView {
        x:0
        y:27
        cellWidth:78
        cellHeight:82
        model:PinnedListModel{
            list:pinnedlist
        }
        clip:true
        delegate: FileIconButton{label:model.label;icon.name:model.icon;description:model.description}
        height:childrenRect.height
        width:parent.width
        onWidthChanged: {
            cellWidth = grid.width/appwnd.columns;
        }
    }
}

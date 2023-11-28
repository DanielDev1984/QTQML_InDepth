# All about Qt / Qml (youtube -> KDAB)

## Qt (Widgets) vs Qt Quick / qml
* Qt Widgets
    * not optimized for mobile Applications
* Qt Quick / qml / declarative Qt
    * for mobile Applications
    * Intuitice UI
    * Design-oriented (-> designers, not coders should be able to create UIs)
    * Rapid prototyping
    * Easy development (still: business logic should be seperated (e.g. in C++))
    * functions are JS expressions

## Qml Property bindings vs the **imperative** paradigm
* **!** dont bother with implementation details for change-notification (e.g."signal-/slot-connection"), but directly (i.e.  "built into the language") state / **declare** that you want to have a binding x->y
* bindings **!=** assignments, hence ":" instead of "="

## Transformations (`transformation.qml`)
* animated custom Rotation (i.e. nesting of different custom rotation origins)
 ```javascript 
 Item {
    id: outerContainer
    transform: Rotation {
                id: outerRotation;
                origin.x : xPosOuterRotationCenter;
                origin.y : yPosOuterRotationCenter;
                angle:0;
                RotationAnimation on angle {
                    from: 0;
                    to: 360;
                    duration: 60000;
                    loops: Animation.Infinite;
                }
            }
    Item {
        id: innerContainer
        transform: Rotation {
                id: innerRotation;
                origin.x : xPosInnerRotationCenter;
                origin.y : yPosInnerRotationCenter;
                angle:0;
                RotationAnimation on angle {
                    from: 0;
                    to: 360;
                    duration: 60000;
                    loops: Animation.Infinite;
                }
            }
    }
 }
 
 ```
<img src="Animations.gif">


## Anchorsystem (`anchorsystem.qml`)
* behold, the anchorsystem (i.e. margins and anchors)
 ```javascript 
 Item {
        id:anchoredItem;        
        anchors {
            right: outerRightItem.left;
            rightMargin: marginSize;
            top: outerTopItem.bottom;
            topMargin: marginSize;
            left: outerLeftItem.right;
            leftMargin: marginSize;
            bottom: outerBottomItem.top;
            bottomMargin: marginSize;
        }
    }
 ```
<img src="Anchors.gif">

## Interaction (`interaction.qml`)
* keyboard, mouse, gesture UI-support
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

## Transformations
<img src="clockDraft.PNG">


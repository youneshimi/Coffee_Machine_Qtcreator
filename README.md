# Coffee_Machine_Qtcreator
L'application machine à café vous permet de choisir un type de café sur le côté gauche de l'écran principal. Après sélection, l'application affiche ce que contiendra le mélange de café (ratio café/lait chaud/mousse de lait). Ceci peut être modifié avec deux curseurs. Lorsque l'infusion a commencé, l'application affiche un affichage animé du processus d'infusion, puis revient à l'écran de démarrage.
Tout d'abord, l'écran de démarrage Animationflowform s'affiche, montrant une barre latérale avec plusieurs types de café et une tasse vide sur l'écran de droite

## CoffeeButton.qml :
La sélection d'un type de café  par exemple, (cappuccino) déclenche animation1 et animation2 dans **CoffeeButton.qml** Sur le côté droit, vous verrez le mélange de café que vous avez sélectionné : 
```ts
     MouseArea {
         anchors.fill: parent
         onClicked: root.clicked()
         onPressed: {
             glow.visible = true
             animation1.start()
             animation2.start()
         }
     }

```
Il déclenche également **cappuccinoButton.on**, qui définit le mélange par défaut pour le type de café sélectionné :
```ts
     cappuccinoButton.onClicked: {
         sideBar.currentCoffee = qsTr("Cappucino")
         sideBar.currentMilk = 7
         sideBar.currentCoffeeAmount = 3.5
         sideBar.coffeeSelected()
     }
```
Cappuccino mélange de café 
```tssideBar.coffeeSelected() ``` définit applicationFlow.state sur "sélection" 

Si vous cliquez sur "Brew me a cup", le choixCoffee.brewButtonSelection.onClicked est déclenché :
```ts
     choosingCoffee.brewButtonSelection.onClicked: {
         applicationFlow.state = "settings"
         applicationFlow.choosingCoffee.milkSlider.value = applicationFlow.choosingCoffee.sideBar.currentMilk
         applicationFlow.choosingCoffee.sugarSlider.value = 2
     }
```

**Sur le côté droit de l'écran, vous verrez deux curseurs, un pour la quantité de lait et un pour le sucre. Ils auront des valeurs par défaut, mais pourront être modifiés par l'utilisateur**
Si vous cliquez sur Brew, le choix Coffee.brewButton.on est déclenché, ce qui affiche un écran avec le message "Please insert cup into tray":

```ts
     choosingCoffee.brewButton.onClicked: {
         applicationFlow.state = "empty cup"
     }
```

Cliquer sur Continuer lance la distribution du type de café que vous avez sélectionné : 
```ts
     emptyCup.continueButton.onClicked: {
         applicationFlow.state = "brewing"
         brewing.coffeeName = choosingCoffee.sideBar.currentCoffee
         brewing.start()
     }
```
Le processus de brassage est défini comme suit dans **Brewing.qml** :


```ts
 BrewingForm {
     id: root
     function start() {
         animation.start()
     }

     signal finished()

     SequentialAnimation {
         id: animation
         PauseAnimation {
             duration: 1500
         }
         PropertyAction {
             target: root
             property: "state"
             value: "coffee"
         }
         PauseAnimation {
             duration: 1500
         }
         PropertyAction {
             target: root
             property: "state"
             value: "milk"
         }
         PauseAnimation {
             duration: 1500
         }
         ScriptAction {
             script: root.finished()
         }
     }

     Behavior on cup.coffeeAmount {
         PropertyAnimation {

         }
     }

     Behavior on cup.milkAmount {
         PropertyAnimation {
         }
     }
 }

```

## Main.cpp

```ts
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.addImportPath(":/imports");
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
```
## Coffee.pro:

```ts
QT += qml quick

CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc \
    qml.qrc \
    qml.qrc


QML_IMPORT_PATH = $$PWD/imports


QML_DESIGNER_IMPORT_PATH =



qnx: target.path = /tmp/$${TARGET}/bin
else: win32|unix: target.path = $$[QT_INSTALL_EXAMPLES]/demos/$${TARGET}
!isEmpty(target.path): INSTALLS += target

SUBDIRS +=
```![Projet sans titre](https://user-images.githubusercontent.com/96379214/151575297-56c66a3b-7f08-40e5-80e9-dc5b5e2fda59.gif)


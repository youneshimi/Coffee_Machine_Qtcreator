QT += qml quick

CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc \
    qml.qrc \
    qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = $$PWD/imports

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =


# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

qnx: target.path = /tmp/$${TARGET}/bin
else: win32|unix: target.path = $$[QT_INSTALL_EXAMPLES]/demos/$${TARGET}
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    ApplicationFlow.qml \
    ApplicationFlowForm.ui.qml \
    Brewing.qml \
    BrewingForm.ui.qml \
    CMakeLists.txt \
    ChoosingCoffee.ui.qml \
    CoffeeButton.qml \
    Cup.qml \
    CupForm.ui.qml \
    EmptyCup.qml \
    EmptyCupForm.ui.qml \
    LICENSE.txt \
    NavigationButton.ui.qml \
    SideBar.qml \
    SideBarForm.ui.qml \
    coffee.qdoc \
    images/cup structure/coffee_cup_large.png \
    images/cup structure/coffee_cup_large.png \
    images/cup structure/coffee_cup_outline.png \
    images/cup structure/coffee_cup_outline.png \
    images/cup structure/cup elements/coffee_cup_back.png \
    images/cup structure/cup elements/coffee_cup_back.png \
    images/cup structure/cup elements/coffee_cup_coverplate.png \
    images/cup structure/cup elements/coffee_cup_coverplate.png \
    images/cup structure/cup elements/coffee_cup_front.png \
    images/cup structure/cup elements/coffee_cup_front.png \
    images/cup structure/liquids/liquid_coffee.png \
    images/cup structure/liquids/liquid_coffee.png \
    images/cup structure/liquids/liquid_foam.png \
    images/cup structure/liquids/liquid_foam.png \
    images/cup structure/liquids/liquid_milk.png \
    images/cup structure/liquids/liquid_milk.png \
    images/icons/coffees/Americano.png \
    images/icons/coffees/Espresso.png \
    images/icons/coffees/Latte.png \
    images/icons/coffees/Macchiato.png \
    images/icons/coffees/cappucino.png \
    images/icons/contents/coffee.png \
    images/icons/contents/milk.png \
    images/icons/contents/sugar.png \
    images/ui components/loader/loading bar 1.png \
    images/ui components/loader/loading bar 2.png \
    images/ui components/loader/loading bar 3.png \
    images/ui components/loader/loading bg.png \
    images/ui controls/buttons/back/white.png \
    images/ui controls/buttons/back/white.png \
    images/ui controls/buttons/go/white.png \
    images/ui controls/buttons/go/white.png \
    images/ui controls/line.png \
    images/ui controls/line.png \
    imports/Coffee/Constants.qml \
    imports/Coffee/TitilliumWeb-Regular.ttf \
    imports/Coffee/qmldir \
    main.qml \
    qt_attribution.json \
    qtquickcontrols2.conf

SUBDIRS += \
    coffee.pro \
    coffee.pro

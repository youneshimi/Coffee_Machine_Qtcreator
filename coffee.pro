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
    main.qml \
    qtquickcontrols2.conf

SUBDIRS +=

TARGET = ru.yurasov.sailotp

DEFINES += APP_VERSION=\\\"$$VERSION\\\"
DEFINES += APP_BUILDNUM=\\\"$$RELEASE\\\"

CONFIG += auroraapp
CONFIG += auroraapp_i18n

PKGCONFIG += libcrypto

SOURCES += src/harbour-sailotp.cpp

DISTFILES += \
    icons/86x86/sailotp.png \
    qml/components/AppBarMenu.qml \
    qml/cover/CoverPage.qml \
    qml/pages/MainView.qml \
    qml/pages/AddOTP.qml \
    qml/pages/About.qml \
    qml/pages/ExportPage.qml \
    qml/pages/ScanOTP.qml \
    qml/pages/QRPage.qml \
    qml/pages/Settings.qml \
    qml/components/NotifyBanner.qml \
    qml/components/AppBarMenu.qml \
    qml/lib/urldecoder.js \
    qml/lib/storage.js \
    qml/lib/crypto.js \
    qml/lib/sha.js \
    qml/ru.yurasov.sailotp.qml \
    qml/sailotp.png \
    rpm/ru.yurasov.sailotp.spec \
    rpm/ru.yurasov.sailotp.yaml \
    rpm/ru.yurasov.sailotp.changes \
    translations/*.ts \
    ru.yurasov.sailotp.desktop

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172 256x256 512x512

TRANSLATIONS = \
    translations/ru.yurasov.sailotp-de.ts \
    translations/ru.yurasov.sailotp-es.ts \
    translations/ru.yurasov.sailotp-fi.ts \
    translations/ru.yurasov.sailotp-fr.ts \
    translations/ru.yurasov.sailotp-it.ts \
    translations/ru.yurasov.sailotp-pt_BR.ts \
    translations/ru.yurasov.sailotp-ru.ts \
    translations/ru.yurasov.sailotp-sv.ts \
    translations/ru.yurasov.sailotp-nl.ts \
    translations/ru.yurasov.sailotp-hu.ts \
    translations/ru.yurasov.sailotp-zh_CN.ts

include(src/FileIO/FileIO.pri)
include(src/QCipher/QCipher.pri)
include(src/qqrencode/qqrencode.pri)

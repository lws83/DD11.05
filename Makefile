ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DDAntiBan
DDAntiBan_FILES = DDAntiBan.xm
DDAntiBan_CFLAGS = -fobjc-arc -Wall -Wextra
DDAntiBan_FRAMEWORKS = Foundation UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	@echo "==> 请手动重新启动目标 App；诊断版不会强制结束进程"

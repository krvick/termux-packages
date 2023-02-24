TERMUX_PKG_HOMEPAGE=https://github.com/KhronosGroup/Vulkan-Tools
TERMUX_PKG_DESCRIPTION="Vulkan Tools and Utilities"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
# This package and vulkan-headers should be updated at same time. Otherwise, they do not compile successfully.
TERMUX_PKG_VERSION="1.3.241"
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://github.com/KhronosGroup/Vulkan-Tools/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=e8bb61e6c4514cb60b85d74cd27204001a19492310e3055659778b1d33bb0078
TERMUX_PKG_DEPENDS="libc++, libx11, libxcb, libwayland, vulkan-loader"
TERMUX_PKG_BUILD_DEPENDS="vulkan-headers (=${TERMUX_PKG_VERSION}), libwayland-protocols"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_CUBE=ON
-DBUILD_ICD=OFF
-DBUILD_WSI_XCB_SUPPORT=ON
-DBUILD_WSI_XLIB_SUPPORT=ON
-DBUILD_WSI_WAYLAND_SUPPORT=ON
-DWAYLAND_SCANNER_EXECUTABLE=$TERMUX_PREFIX/opt/libwayland/cross/bin/wayland-scanner
-DVULKAN_HEADERS_INSTALL_DIR=$TERMUX_PREFIX
"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"

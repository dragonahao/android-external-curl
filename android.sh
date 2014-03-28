ANDROID_HOME=/usr/local/android/kbe-rk3188-android &&
NDK_HOME=/usr/local/android/ndk-r9c &&
PATH="$ANDROID_HOME/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin:$PATH" \
./configure --host=arm-eabi CC=$ANDROID_HOME/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/bin/arm-eabi-gcc --with-random=/dev/urandom \
CPPFLAGS="-I$NDK_HOME/platforms/android-18/arch-arm/usr/include \
-I $ANDROID_HOME/external/curl/include/  \
-I $ANDROID_HOME/external/openssl/include   \
-I $ANDROID_HOME/external/curl   \
-I $ANDROID_HOME/out/target/product/rk31sdk/obj/STATIC_LIBRARIES/libcurl_intermediates   \
-I $ANDROID_HOME/dalvik/libnativehelper/include/nativehelper   \
-I $ANDROID_HOME/system/core/include   \
-I $ANDROID_HOME/hardware/libhardware/include   \
-I $ANDROID_HOME/hardware/libhardware_legacy/include   \
-I $ANDROID_HOME/hardware/ril/include   \
-I $ANDROID_HOME/dalvik/libnativehelper/include   \
-I $ANDROID_HOME/frameworks/base/include   \
-I $ANDROID_HOME/frameworks/base/opengl/include   \
-I $ANDROID_HOME/frameworks/base/native/include   \
-I $ANDROID_HOME/external/skia/include   \
-I $ANDROID_HOME/out/target/product/rk31sdk/obj/include   \
-I $ANDROID_HOME/bionic/libc/arch-arm/include   \
-I $ANDROID_HOME/bionic/libc/include   \
-I $ANDROID_HOME/bionic/libstdc++/include   \
-I $ANDROID_HOME/bionic/libc/kernel/common   \
-I $ANDROID_HOME/bionic/libc/kernel/arch-arm   \
-I $ANDROID_HOME/bionic/libm/include   \
-I $ANDROID_HOME/bionic/libm/include/arch/arm   \
-I $ANDROID_HOME/bionic/libthread_db/include \
-include $ANDROID_HOME/build/core/combo/include/arch/linux-arm/AndroidConfig.h \
-I $ANDROID_HOME/system/core/include/arch/linux-arm/ \
-D__ARM_ARCH_7__ -DANDROID -DNDEBUG -DHAVE_CONFIG_H" \
CFLAGS="-fno-exceptions -Wno-multichar -msoft-float -fpic -ffunction-sections \
-funwind-tables -fstack-protector -Wa,--noexecstack -Werror=format-security \
-fno-short-enums -march=armv5te -mtune=xscale  -Wno-psabi -mthumb-interwork  \
-fmessage-length=0 -W -Wall -Wno-unused -Winit-self -Wpointer-arith \
-Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point  \
-g -Wstrict-aliasing=2 -finline-functions -fno-inline-functions-called-once \
-fgcse-after-reload -frerun-cse-after-loop -frename-registers  \
-mthumb -Os -fomit-frame-pointer -fno-strict-aliasing -finline-limit=64   \
-Wpointer-arith -Wwrite-strings -Wunused -Winline -Wnested-externs \
-Wmissing-declarations -Wmissing-prototypes -Wno-long-long -Wfloat-equal \
-Wno-multichar -Wsign-compare -Wno-format-nonliteral -Wendif-labels \
-Wstrict-prototypes -Wdeclaration-after-statement -Wno-system-headers"  \
LIBS="-nostdlib -Bdynamic -Wl,-T,$ANDROID_HOME/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/arm-eabi/lib/ldscripts/armelf.x \
-Wl,-dynamic-linker,/system/bin/linker -Wl,--gc-sections -Wl,-z,nocopyreloc \
-L$ANDROID_HOME/out/target/product/rk31sdk/obj/lib -Wl,-z,noexecstack \
-Wl,-rpath-link=$ANDROID_HOME/out/target/product/rk31sdk/obj/lib \
-lc -llog -lcutils -lstdc++  \
-Wl,--no-undefined $ANDROID_HOME/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/lib/gcc/arm-eabi/4.6.x-google/libgcc.a  \
$ANDROID_HOME/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/lib/gcc/arm-eabi/4.6.x-google/crtend.o \
-lm $ANDROID_HOME/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6/lib/gcc/arm-eabi/4.6.x-google/crtbegin.o"
 

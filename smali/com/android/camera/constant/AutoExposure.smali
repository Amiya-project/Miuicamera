.class public Lcom/android/camera/constant/AutoExposure;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/constant/AutoExposure$SoftlightMode;,
        Lcom/android/camera/constant/AutoExposure$MeteringMode;,
        Lcom/android/camera/constant/AutoExposure$AntiBandingMode;,
        Lcom/android/camera/constant/AutoExposure$FlashMode;
    }
.end annotation


# static fields
.field public static final FLASH_MODE_AMBIENT_LIGHT_WITHOUT_SOFT_LIGHT_ADJUST:I = 0x6c

.field public static final FLASH_MODE_AUTO:I = 0x3

.field public static final FLASH_MODE_FRONT_SOFT_LIGHT_ADJUST:I = 0x6b

.field public static final FLASH_MODE_MANUAL_OFF:I = 0xc8

.field public static final FLASH_MODE_OFF:I = 0x0

.field public static final FLASH_MODE_ON:I = 0x1

.field public static final FLASH_MODE_SCREEN_HALO:I = 0x68

.field public static final FLASH_MODE_SCREEN_HALO_AND_FLASH_ON:I = 0x6a

.field public static final FLASH_MODE_SCREEN_HALO_AUTO:I = 0x69

.field public static final FLASH_MODE_SCREEN_LIGHT_AUTO:I = 0x67

.field public static final FLASH_MODE_SCREEN_LIGHT_ON:I = 0x65

.field public static final FLASH_MODE_TORCH:I = 0x2

.field public static final METERING_MODE_CENTER_WEIGHTED:I = 0x1

.field public static final METERING_MODE_FRAME_AVERAGE:I = 0x0

.field public static final METERING_MODE_SPOT_METERING:I = 0x2

.field public static final SOFTLIGHT_MODE_COLD:I = 0x2

.field public static final SOFTLIGHT_MODE_NATURE:I = 0x1

.field public static final SOFTLIGHT_MODE_WORM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

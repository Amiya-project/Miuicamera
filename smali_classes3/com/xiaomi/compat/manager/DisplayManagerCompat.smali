.class public final Lcom/xiaomi/compat/manager/DisplayManagerCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTemporaryAutoBrightnessAdjustment(Landroid/hardware/display/DisplayManager;F)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryAutoBrightnessAdjustment(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

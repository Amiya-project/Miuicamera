.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O000O/o000O000;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O000O/o000O000;->OooO00o:Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0O000O/o000O000;->OooO00o:Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$null$38(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p0

    return p0
.end method

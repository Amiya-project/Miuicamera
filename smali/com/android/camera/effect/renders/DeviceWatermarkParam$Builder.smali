.class public final Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/DeviceWatermarkParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mParameter:Lcom/android/camera/effect/renders/DeviceWatermarkParam;


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dualEnable",
            "frontEnable",
            "isUltraMP",
            "path"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;-><init>(ZZZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->mParameter:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->mParameter:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-object p0
.end method

.method public setCinematicAspectRatio(Z)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCinematicAspectRatio"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->mParameter:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {v0, p1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->access$002(Lcom/android/camera/effect/renders/DeviceWatermarkParam;Z)Z

    return-object p0
.end method

.method public setCustomText(Ljava/lang/String;)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customText"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->mParameter:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {v0, p1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->access$202(Lcom/android/camera/effect/renders/DeviceWatermarkParam;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setLTR(Z)Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLTR"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/renders/DeviceWatermarkParam$Builder;->mParameter:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {v0, p1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->access$102(Lcom/android/camera/effect/renders/DeviceWatermarkParam;Z)Z

    return-object p0
.end method

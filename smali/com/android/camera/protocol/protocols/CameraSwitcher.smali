.class public interface abstract Lcom/android/camera/protocol/protocols/CameraSwitcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/CameraSwitcher;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CameraSwitcher;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/CameraSwitcher;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CameraSwitcher;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/CameraSwitcher;

    return-object v0
.end method


# virtual methods
.method public abstract changeCamera(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation
.end method

.method public abstract forceSwitchFront()Z
.end method

.method public abstract onSwitchCameraPicker(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFromStabilizer"
        }
    .end annotation
.end method

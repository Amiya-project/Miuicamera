.class public interface abstract Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;
.implements Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiFaceDetectChanges;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MimojiStateChanges"
.end annotation


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    return-object v0
.end method


# virtual methods
.method public abstract getFboUtils()Lcom/xiaomi/mimoji/mimojifu/faceunity/pta_art/util/FBOUtils;
.end method

.method public abstract getGlcontext()Ljavax/microedition/khronos/egl/EGLContext;
.end method

.method public abstract initPreview(ZLcom/android/camera/CameraSize;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frontCamera",
            "mPreviewSize"
        }
    .end annotation
.end method

.method public abstract onDrawFrame(Landroid/graphics/Rect;IIZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderRect",
            "width",
            "height",
            "copyTexture"
        }
    .end annotation
.end method

.method public abstract onModeStateBack(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backStateDepth",
            "isShowPannel"
        }
    .end annotation
.end method

.method public abstract onShutterButtonClick(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickType"
        }
    .end annotation
.end method

.method public abstract setActionState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract setDisableSingleTapUp(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableSingleTapUp"
        }
    .end annotation
.end method

.method public abstract setIsFrameAvailable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFrameAvailable"
        }
    .end annotation
.end method

.method public abstract setModeState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

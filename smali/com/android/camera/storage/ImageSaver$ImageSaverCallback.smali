.class public interface abstract Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageSaverCallback"
.end annotation


# virtual methods
.method public abstract enableThumbnail()V
.end method

.method public abstract getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
.end method

.method public abstract getDisplayRotation()I
.end method

.method public abstract getScreenHint()Lcom/android/camera/ui/ScreenHint;
.end method

.method public abstract getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;
.end method

.method public abstract isActivityPaused()Z
.end method

.method public abstract onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "title"
        }
    .end annotation
.end method

.method public abstract onProcessorJpegFinish()V
.end method

.method public abstract releaseSnapshotRender()V
.end method

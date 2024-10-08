.class public abstract Lcom/android/camera2/MiCamera2Shot;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_TASK_DATA_TIMESTAMP:J = 0x0L

.field private static final SHUTTER_FRAMENUM_CAPTUREING:I = 0x1

.field private static final SHUTTER_FRAMENUM_NONE:I = 0x0

.field private static final SHUTTER_FRAMENUM_SHUTTERED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MiCamera2Shot"


# instance fields
.field public mAnchorFrame:Z

.field public mAnchorFrameLost:Z

.field public mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

.field public mCameraHandler:Landroid/os/Handler;

.field public mDeparted:Z

.field private mIsHighQualityQuickShotEnabled:Z

.field private mIsQuickShotEnabled:Z

.field public mMiCamera:Lcom/android/camera2/MiCamera2;

.field public volatile mNeedDoAnchorFrame:Z

.field public mOperationMode:I

.field private mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

.field private mPictureCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

.field public mPreviewSize:Lcom/android/camera/CameraSize;

.field public mPreviewThumbnailHash:I

.field private mQuickShotAnimation:Z

.field public mSatCameraId:I

.field public mSavePath:Ljava/lang/String;

.field private mShutterFrameNum:I

.field public mSoundTime:I


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "miCamera"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewThumbnailHash:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsHighQualityQuickShotEnabled:Z

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsQuickShotEnabled:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iput v1, p0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2Shot;->mNeedDoAnchorFrame:Z

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrameLost:Z

    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    iput v1, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsHighQualityQuickShotEnabled:Z

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsQuickShotEnabled:Z

    return-void
.end method

.method private synthetic lambda$processResult$0(JLcom/android/zxing/CacheImageDecoder;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "tempTimestamp",
            "imageDecoder"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v4, v0, Lcom/android/camera/CameraSize;->width:I

    iget v5, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    const/4 v6, 0x0

    move-object v1, p3

    move-wide v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/zxing/CacheImageDecoder;->saveAnchorFrameThumbnail(JII[ILjava/lang/String;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(JLcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera2/MiCamera2Shot;->lambda$processResult$0(JLcom/android/zxing/CacheImageDecoder;)V

    return-void
.end method

.method public abstract generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end method

.method public final generateParallelTaskData(J)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera2/MiCamera2Shot;->generateParallelTaskData(JZ)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    return-object p0
.end method

.method public final generateParallelTaskData(JZ)Lcom/xiaomi/camera/core/ParallelTaskData;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timestamp",
            "anchorFrame"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "null callback is not allowed!"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    new-instance v1, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v8

    move-object v2, v1

    move-wide v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    new-instance p1, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    new-instance p2, Lcom/android/camera2/QuickViewParam;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {p1, p2}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p1

    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {p1, p0}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    move-result-object p0

    return-object p0
.end method

.method public abstract generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportParallelImageName"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

    return-object p0
.end method

.method public getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mPictureCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    return-object p0
.end method

.method public getShutterTimestamp()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSoundTimeWhenAnchor(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algoType"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSoundTimeWhenAnchor(Lcom/android/camera2/CameraCapabilities;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "original soundTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MiCamera2Shot"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/4 v2, 0x1

    const/4 v4, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_1
    shr-int/lit8 p0, p0, 0x4

    goto :goto_0

    :cond_2
    shr-int/2addr p0, v0

    :goto_0
    and-int/2addr p0, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "final soundTime is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public isHighQualityQuickShot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mIsHighQualityQuickShotEnabled:Z

    return p0
.end method

.method public isInQcfaMode()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedQcfa"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedQcfa(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const v1, 0x8007

    if-eq v0, v1, :cond_1

    const v1, 0x80f5

    if-eq v0, v1, :cond_1

    const v1, 0x80f3

    if-eq v0, v1, :cond_1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00ooOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const v1, 0x9007

    if-eq v0, v1, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const v0, 0x9004

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickShot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mIsQuickShotEnabled:Z

    return p0
.end method

.method public isQuickShotAnimation()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2Shot;->mQuickShotAnimation:Z

    return p0
.end method

.method public isShutterReturned()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeClobber()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2Shot;->mDeparted:Z

    return-void
.end method

.method public abstract notifyResultData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onCaptureShutter()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v7, Lcom/android/camera2/QuickViewParam;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-interface {v0, v7}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method public abstract onImageReceived(Landroid/media/Image;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "resultType"
        }
    .end annotation
.end method

.method public onPreviewComing()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    return v2

    :cond_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    iput v3, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->onCaptureShutter()V

    return v2
.end method

.method public final onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2Shot;->mPreviewThumbnailHash:I

    return-void
.end method

.method public abstract prepare()V
.end method

.method public processResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera2/MiCamera2Shot;->processResult(Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public processResult(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "zslCapture"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2Shot;->mNeedDoAnchorFrame:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrame:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ANCHOR_FRAME_TIMESTAMP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "partial begin to choose anchor frame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "MiCamera2Shot"

    invoke-static {v7, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2Shot;->mAnchorFrameLost:Z

    const-wide/16 v8, 0x0

    if-eqz v4, :cond_1

    cmp-long v4, v2, v8

    if-gez v4, :cond_1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Anchor frame lost !!! Read pixel and play sound now."

    invoke-static {v7, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v2, v8

    :cond_1
    if-nez p2, :cond_2

    iget v4, v0, Lcom/android/camera2/MiCamera2Shot;->mSoundTime:I

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v13, v4

    goto :goto_1

    :cond_2
    move v13, v5

    :goto_1
    cmp-long v4, v2, v8

    if-lez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v4

    if-eqz v4, :cond_5

    iput-boolean v5, v0, Lcom/android/camera2/MiCamera2Shot;->mNeedDoAnchorFrame:Z

    if-eqz v13, :cond_3

    new-instance v5, Lcom/android/camera2/QuickViewParam;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-interface {v4, v5, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    :cond_3
    iget-object v1, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LOooO0OO/OooO0O0/OooO0O0/o000O0Oo;

    invoke-direct {v4, v0, v2, v3}, LOooO0OO/OooO0O0/OooO0O0/o000O0Oo;-><init>(Lcom/android/camera2/MiCamera2Shot;J)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_4
    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v2

    if-eqz v2, :cond_5

    iput-boolean v5, v0, Lcom/android/camera2/MiCamera2Shot;->mNeedDoAnchorFrame:Z

    new-instance v3, Lcom/android/camera2/QuickViewParam;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v11

    const/4 v12, 0x1

    const/4 v14, 0x1

    iget-object v15, v0, Lcom/android/camera2/MiCamera2Shot;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-interface {v2, v3, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setHighQualityQuickShotEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsHighQualityQuickShotEnabled:Z

    return-void
.end method

.method public setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parallelCallback"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mParallelCallback:Lcom/xiaomi/camera/core/ParallelCallback;

    return-void
.end method

.method public setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureCallBack"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mPictureCallback:Lcom/android/camera2/Camera2Proxy$PictureCallback;

    return-void
.end method

.method public setQuickShotAnimation(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFastShutterCallbackSupported"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mQuickShotAnimation:Z

    return-void
.end method

.method public setQuickShotEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2Shot;->mIsQuickShotEnabled:Z

    return-void
.end method

.method public abstract startSessionCapture()V
.end method

.method public final startShot()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startShot, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getFocusTimeBeforeShot()J

    move-result-wide v0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->OooOooO()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Focus time before shot: %d ms"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/performance/MqsHelper;->sendMsg(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/camera2/CameraConfigs;->setFocusTimeBeforeShot(J)V

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->resetFocusTime()V

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->prepare()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->startSessionCapture()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startSessionCapture: cameraDevice has been released"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput v3, p0, Lcom/android/camera2/MiCamera2Shot;->mShutterFrameNum:I

    return-void
.end method

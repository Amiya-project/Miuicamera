.class public Lcom/android/camera2/MiCameraSurfaceManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCameraSurfaceManager"


# instance fields
.field public mDeferPreviewSurface:Landroid/view/Surface;

.field public mDepthReader:Landroid/media/ImageReader;

.field public mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

.field public mParallelSpecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotoImageReader:Landroid/media/ImageReader;

.field public mPortraitRawImageReader:Landroid/media/ImageReader;

.field public mPreviewImageReader:Landroid/media/ImageReader;

.field public mPreviewSurface:Landroid/view/Surface;

.field public mRawImageReader:Landroid/media/ImageReader;

.field public mRawImageWriter:Landroid/media/ImageWriter;

.field public mRecordSurface:Landroid/view/Surface;

.field public mVideoSnapshotImageReader:Landroid/media/ImageReader;

.field public mZoomMapSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$prepareRawImageWriter$0(Landroid/media/ImageWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "writer"
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "MiCameraSurfaceManager"

    const-string v1, "The enqueued imaged has be consumed"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closePhotoImageReader()V

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closePreviewImageReader()V

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closeRawImageReader()V

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closeVideoSnapshotImageReader()V

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closeDepthImageReader()V

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closePortraitRawImageReader()V

    return-void
.end method

.method public closeDepthImageReader()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!supportAlgoUp"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mDepthReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mDepthReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method public closePhotoImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPhotoImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPhotoImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method public closePortraitRawImageReader()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!supportAlgoUp"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPortraitRawImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPortraitRawImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method public closePreviewImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method public closeRawImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method public closeVideoSnapshotImageReader()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method public getBokehMainRawSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getBokehSubRawSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getFakeSatMainCaptureSurface(IZ)Landroid/view/Surface;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV2Supported"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "satCameraId",
            "sat"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "MiCameraSurfaceManager"

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFakeSatMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getFakeSatMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getFakeSatUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_4
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "getFakeSatMainCaptureSurface: unavailable for non-SAT mode"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFakeSatMainCaptureSurfaceIndex(IZ)I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV2Supported"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "satCameraId",
            "sat"
        }
    .end annotation

    const/4 p0, -0x1

    const/4 v0, 0x0

    const-string v1, "MiCameraSurfaceManager"

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFakeSatMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFakeSatMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    const/16 p0, 0x9

    return p0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    const/4 p0, 0x7

    return p0

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "getFakeSatMainCaptureSurface: unavailable for non-SAT mode"

    invoke-static {v1, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public getFakeSatTeleRemoteSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV2Supported"
        type = 0x2
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getFakeSatUltraTeleRemoteSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV2Supported"
        type = 0x2
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getFakeSatUltraWideRemoteSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV2Supported"
        type = 0x2
    .end annotation

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getFakeSatWideRemoteSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV2Supported"
        type = 0x2
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getMTKFusionWideRemoteSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMTKPlatform"
        type = 0x1
    .end annotation

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getMacroParallelSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getMainCaptureSurface(IZ)Landroid/view/Surface;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "sat"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "MiCameraSurfaceManager"

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "getMainCaptureSurface: non-SAT mode"

    invoke-static {v1, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getMainSurfaceIndex(ZI)I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAlgoTypeShotInstance"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "satMode",
            "cameraId"
        }
    .end annotation

    const-string p0, "MiCameraSurfaceManager"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p2, v0, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v2

    :cond_1
    return p1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "getMainCaptureSurface: non-SAT mode"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public getParallelSpecList()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    return-object p0
.end method

.method public getQcfaRemoteSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedQcfa"
        type = 0x2
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRawMacroSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRawSurfaceForTuningBuffer()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRawTeleSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRawUltraTeleSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRawUltraWideSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRawWideSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteSurface(I)Landroid/view/Surface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSatBinningSRSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBinningSrData"
        type = 0x2
    .end annotation

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getSatRawSurface(I)Landroid/view/Surface;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSatRawSurface: satMasterCameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MiCameraSurfaceManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatRawSurface: invalid satMasterCameraId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawWideSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawUltraTeleSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawTeleSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawWideSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRawUltraWideSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getSatRawSurfaceIndex(I)I
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAlgoTypeShotInstance"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSatRawSurface: invalid satMasterCameraId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MiCameraSurfaceManager"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x15

    return p0

    :cond_1
    const/16 p0, 0x14

    return p0

    :cond_2
    const/16 p0, 0x13

    return p0

    :cond_3
    const/16 p0, 0x12

    return p0
.end method

.method public getSharedRawSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getSharedRawSurfaceForSNSE()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getSubRemoteSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getTiledMainCaptureIndex(IZ)I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAlgoTypeShotInstance"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "sat"
        }
    .end annotation

    const/4 p0, -0x1

    const/4 v0, 0x0

    const-string v1, "MiCameraSurfaceManager"

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTiledMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTiledMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/16 p0, 0xe

    return p0

    :cond_1
    const/16 p0, 0xd

    return p0

    :cond_2
    const/16 p0, 0xc

    return p0

    :cond_3
    const/16 p0, 0xb

    return p0

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "getTiledMainCaptureSurface: unavailable for non-SAT mode"

    invoke-static {v1, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public getTiledMainCaptureSurface(IZ)Landroid/view/Surface;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "sat"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "MiCameraSurfaceManager"

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTiledMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getTiledMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getTiledUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getTiledTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getTiledWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->getTiledUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_4
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "getTiledMainCaptureSurface: unavailable for non-SAT mode"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTiledTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getTiledUltraTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getTiledUltraWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getTiledWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getTuningRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getUltraTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getUltraWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCameraSurfaceManager;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public prepareDepthImageReader(Lcom/android/camera/CameraSize;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!supportAlgoUp"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "listener",
            "handler"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closeDepthImageReader()V

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    div-int/2addr p1, v1

    const v2, 0x20363159

    invoke-static {v0, p1, v2, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public preparePhotoImageReader(Lcom/android/camera2/CameraConfigs;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "configs",
            "listener",
            "handler"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closePhotoImageReader()V

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getPhotoMaxImages()I

    move-result p1

    invoke-static {v1, v0, v2, p1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public preparePortraitRawImageReader(Lcom/android/camera/CameraSize;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!supportAlgoUp"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "listener",
            "handler"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closePortraitRawImageReader()V

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v1, 0x100

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public preparePreviewImageReader(Lcom/android/camera2/CameraConfigs;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "configs",
            "listener",
            "handler"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closePreviewImageReader()V

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result p1

    invoke-static {v1, v0, v2, p1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public prepareRawImageReader(Lcom/android/camera/CameraSize;ILandroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "maxImages",
            "listener",
            "handler"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closeRawImageReader()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v1, 0x20

    invoke-static {v0, p1, v1, p2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1, p3, p4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public prepareRawImageWriter(Landroid/view/Surface;Landroid/os/Handler;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputSurface",
            "handler"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    :cond_0
    sget-object v0, LOooO0OO/OooO0O0/OooO0O0/o00;->OooO00o:LOooO0OO/OooO0O0/OooO0O0/o00;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {p1, v0, p2}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public prepareVideoSnapshotImageReader(Lcom/android/camera/CameraSize;Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "listener",
            "handler"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera2/MiCameraSurfaceManager;->closeVideoSnapshotImageReader()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v1, 0x100

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mZoomMapSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mDeferPreviewSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRecordSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPhotoImageReader:Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mRawImageReader:Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPreviewImageReader:Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mDepthReader:Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/android/camera2/MiCameraSurfaceManager;->mPortraitRawImageReader:Landroid/media/ImageReader;

    return-void
.end method

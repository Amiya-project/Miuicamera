.class public Lcom/android/camera/module/MiLiveModule;
.super Lcom/android/camera/module/BaseModule;

# interfaces
.implements Lcom/android/camera/module/ILiveModule;
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;
.implements Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;
.implements Lcom/android/camera/protocol/protocols/CameraAction;
.implements Lcom/android/camera/protocol/protocols/KaleidoscopeProtocol;
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/MiLiveModule$MainHandler;
    }
.end annotation


# static fields
.field private static final CAPTURE_THRESHOLD:J = 0x1f4L

.field private static final MAS_APP_ON_HIBERNATE:I = 0x101

.field private static final MSG_WAIT_SHUTTER_SOUND_FINISH:I = 0x100

.field private static final START_RECORDING_OFFSET:J = 0x12cL

.field private static final START_RECORDING_OFFSET_MUSIC_BACKGROUND:J = 0x1f4L

.field private static mHeldLibObjSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private m3ALocked:Z

.field private mBaseFileName:Ljava/lang/String;

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field private mCaptureTime:J

.field public mFaceDetectionEnabled:Z

.field public mFaceDetectionStarted:Z

.field private mIsPreviewing:Z

.field private mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

.field private mOldOriginVolumeStream:I

.field private mOnResumeTime:J

.field private mQuality:I

.field private mRecorderListener:Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;

.field public mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mShowFace:Z

.field private mTouchFocusStartingTime:J

.field private mVideoSize:Lcom/android/camera/CameraSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiLiveModule@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mShowFace:Z

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/camera/module/MiLiveModule;->mQuality:I

    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mCaptureTime:J

    new-instance v0, Lcom/android/camera/module/MiLiveModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/MiLiveModule$1;-><init>(Lcom/android/camera/module/MiLiveModule;)V

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mRecorderListener:Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;

    new-instance v0, Lcom/android/camera/module/MiLiveModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/MiLiveModule$2;-><init>(Lcom/android/camera/module/MiLiveModule;)V

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/MiLiveModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mOnResumeTime:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->setOrientationParameter()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/module/MiLiveModule;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method public static synthetic access$1101(Lcom/android/camera/module/MiLiveModule;D)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onDeviceKeepMoving(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/MiLiveModule;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->startVideoRecording()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/module/MiLiveModule;)Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->trackLiveVideoParams()V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/module/MiLiveModule;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->initReview(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    return-void
.end method

.method private createName(JI)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateTaken",
            "fileNo"
        }
    .end annotation

    if-gtz p3, :cond_0

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    const p2, 0x7f120a79

    invoke-static {p2}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule;->mBaseFileName:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->mBaseFileName:Ljava/lang/String;

    return-object p0
.end method

.method private doLaterReleaseIfNeed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseIfNotRecording()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->releaseAll(Z)V

    return v0

    :cond_1
    return v1
.end method

.method private genContentValues(IIZ)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputFileFormat",
            "fileNo",
            "hide"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/camera/module/MiLiveModule;->createName(JI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    const-string p2, "_%d"

    invoke-static {v2, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/Util;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/android/camera/Util;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2f

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/storage/Storage;->CAMERA_TEMP_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/camera/Util;->createFile(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genContentValues: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "mime_type"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_data"

    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    iget p2, p2, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "resolution"

    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmpl-double p1, p1, v3

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    cmpl-double p1, p1, v3

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo p1, "save_cover"

    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo p0, "relative_path"

    const-string p1, "DCIM/Camera/"

    invoke-virtual {v2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "is_pending"

    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2
.end method

.method private handleUpdateFaceView(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visible",
            "clearFaces"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00oO0;

    invoke-direct {v2, p0, p1, v0, p2}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00oO0;-><init>(Lcom/android/camera/module/MiLiveModule;ZZZ)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private initLiveConfig()V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/module/impl/ImplFactory;->initModulePersistent(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/live/LiveGenericControl;->prepare()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/live/LiveGenericControl;->initResource()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mRecorderListener:Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->setRecorderListener(Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl$IRecorderListener;)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p0

    invoke-interface {v0, v2, p0, v1}, Lcom/android/camera/protocol/protocols/live/LiveGenericControl;->onOrientationChanged(III)V

    return-void
.end method

.method private initReview(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "audioPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/camera/module/MiLiveModule;->genContentValues(IIZ)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->impl2()Lcom/android/camera/protocol/protocols/MiLivePlayerControl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, p1, p2}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->prepare(Landroid/content/ContentValues;Ljava/util/List;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/Camera;->onUserInteraction()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "show review fail~"

    invoke-static {p1, v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

    return-void
.end method

.method private isEisOn()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedMovieSolid"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/MiLiveModule;->mQuality:I

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isCurrentQualitySupportEis(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isEISPreviewSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$checkDisplayOrientation$2(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setCameraDisplayOrientation(I)V

    return-void
.end method

.method private synthetic lambda$handleUpdateFaceView$5(ZZZLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "visible",
            "mirror",
            "clearFaces",
            "p"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result v5

    move-object v0, p4

    move v1, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->updateFaceView(ZZZZI)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p4

    move v1, p1

    move v2, p3

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->updateFaceView(ZZZZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onFocusStateChanged$0(Lcom/android/camera2/Camera2Proxy;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "d"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->lockExposure(Z)V

    return-void
.end method

.method private synthetic lambda$onNewUriArrived$6(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "title",
            "uri"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->impl2()Lcom/android/camera/protocol/protocols/MiLivePlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->getSaveContentValues()Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "newUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0, p2, v1}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onSingleTapUp$3(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setFocusViewType(Z)V

    return-void
.end method

.method private synthetic lambda$setOrientationParameter$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setDeviceOrientation(I)V

    return-void
.end method

.method private synthetic lambda$updateFace$4(ZLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "faceDetection",
            "p"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/MiLiveModule;->mShowFace:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-interface {p2, p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setSkipDrawFace(Z)V

    invoke-interface {p2, v0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setPinFace(Z)V

    return-void
.end method

.method public static declared-synchronized loadLibs(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "hashCode"
        }
    .end annotation

    const-class v0, Lcom/android/camera/module/MiLiveModule;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c++_shared"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "ffmpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v1, "record_video"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v1, 0xc35b

    invoke-static {p0, v1}, Lcom/xiaomi/recordmediaprocess/SystemUtil;->Init(Landroid/content/Context;I)V

    :cond_0
    sget-object p0, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p0, "MiLiveModule"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadLibs held lib objects : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->Version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private pauseVideoRecording(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formRelease"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseVideoRecording formRelease "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->canRecordingStop()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo v0, "too fast to pause recording."

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_0
    const-string/jumbo p1, "mi_live_pause_recording"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onPause()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "recordState pause fail~"

    invoke-static {p1, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->pauseRecording()V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    :cond_4
    :goto_2
    return-void
.end method

.method private previewWhenSessionSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->MI_LIVE_TYPES_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method private resetToIdle()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "resetToIdle"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/live/LiveGenericControl;->reset()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->impl2()Lcom/android/camera/protocol/protocols/MiLivePlayerControl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->hide()V

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(ILjava/util/List;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onFinish()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/MiLiveModule;->mOldOriginVolumeStream:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    iput-boolean v1, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->doLaterReleaseIfNeed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "onReviewDoneClicked -- "

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->resumePreview()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->startPreview()V

    :cond_5
    :goto_0
    return-void
.end method

.method private resetZoomPreview()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecordingPaused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomManager()Lcom/android/camera/zoom/ZoomManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/zoom/ZoomManager;->updateZoomRatioToggleButtonState(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomManager()Lcom/android/camera/zoom/ZoomManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/zoom/ZoomManager;->restoreZoomAfterRecording()V

    return-void
.end method

.method private resumeVideoRecording()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomManager()Lcom/android/camera/zoom/ZoomManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/zoom/ZoomManager;->updateZoomRatioToggleButtonState(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomManager()Lcom/android/camera/zoom/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/zoom/ZoomManager;->resetZoomForRecording()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->resumeRecording()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onResume()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "recordState resume fail~"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setOrientation(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "orientationCompensation"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkActivityOrientation()V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setOrientationCompensation(I)V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->setOrientationParameter()V

    :cond_1
    return-void
.end method

.method private setOrientationParameter()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0oO0Ooo;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0oO0Ooo;-><init>(Lcom/android/camera/module/MiLiveModule;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method private showReview()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->impl2()Lcom/android/camera/protocol/protocols/MiLivePlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "show review fail~"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    :goto_0
    return-void
.end method

.method private startVideoRecording()V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string v1, "MiLive startVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraAudioRestriction(Z)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "attr_3a_locked"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOn()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->startRecording()V

    const-string/jumbo v2, "mi_live_start_recording"

    invoke-static {v2}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/MiLiveModule;->mOldOriginVolumeStream:I

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-static {v2}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOO0O()V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->changeScreenOrientation()V

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onStart()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomManager()Lcom/android/camera/zoom/ZoomManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/zoom/ZoomManager;->updateZoomRatioToggleButtonState(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomManager()Lcom/android/camera/zoom/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/zoom/ZoomManager;->resetZoomForRecording()V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    return-void
.end method

.method private trackLiveVideoParams()V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->getSegmentSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveMusic()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCurrentLiveSpeed()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getCurrentKaleidoscope()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateBeauty()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v5

    iget-object v6, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    iget v7, p0, Lcom/android/camera/module/MiLiveModule;->mQuality:I

    invoke-static/range {v1 .. v8}, Lcom/android/camera/statistic/CameraStatUtils;->trackMiLiveRecordingParams(ILjava/lang/String;IIZLcom/android/camera/fragment/beauty/BeautyValues;ILjava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized unloadLibs(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashCode"
        }
    .end annotation

    const-class v0, Lcom/android/camera/module/MiLiveModule;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string p0, "MiLiveModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unloadLibs held lib objects : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/android/camera/module/MiLiveModule;->mHeldLibObjSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/recordmediaprocess/SystemUtil;->UnInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updateBeauty()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->initBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;Lcom/android/camera2/CameraCapabilities;I)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBeauty(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    return-void
.end method

.method private updateDeviceOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera2/CameraConfigManager;->setDeviceOrientation(I)V

    return-void
.end method

.method private updateFaceView(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visible",
            "clearFaces"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateFilter()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFilter: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    return-void
.end method

.method private updateFocusMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setFocusMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method private updateFpsRange()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setFpsRange(Landroid/util/Range;)V

    return-void
.end method

.method private updateKaleidoscope()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "needShowKaleidoscope"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->getKaleidoscopeValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/EffectController;->setKaleidoscope(Ljava/lang/String;)V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/live/LiveGenericControl;->getPreviewRatio()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getPreferLiveVideoQuality(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/MiLiveModule;->mQuality:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v2, 0x0

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v3

    float-to-double v5, v0

    iget-object v7, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method private updateVideoBokeh()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoBokehAdjust"
        type = 0x2
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frontVideoBokeh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoBokehLevelFront(F)V

    goto :goto_0

    :cond_0
    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backVideoBokeh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setVideoBokehLevelBack(I)V

    :goto_0
    return-void
.end method

.method private updateVideoStabilization()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->isEisOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "videoStabilization: EIS"

    invoke-static {v0, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setEnableEIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setEnableOIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isEISPreviewSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "videoStabilization: OIS"

    invoke-static {v0, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setEnableEIS(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setEnableOIS(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setVideoStabilizationCropped(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->lambda$onNewUriArrived$6(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic OooO0oO(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/MiLiveModule;->lambda$checkDisplayOrientation$2(Lcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method

.method public synthetic OooO0oo(ZZZLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/MiLiveModule;->lambda$handleUpdateFaceView$5(ZZZLcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method

.method public synthetic OooOO0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->lambda$setOrientationParameter$1()V

    return-void
.end method

.method public synthetic OooOO0O(ZLcom/android/camera/protocol/protocols/MainContentProtocol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->lambda$updateFace$4(ZLcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method

.method public appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asdInterceptorChain"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->appendModuleExternalASD(Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V

    new-instance v0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;

    invoke-direct {v0, p0}, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;-><init>(Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;->addInterceptor(Lcom/android/camera/module/interceptor/base/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;

    return-void
.end method

.method public changeScreenOrientation()V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->impl2()Lcom/android/camera/protocol/protocols/MiLivePlayerControl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->supportScreenOrientation()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getisMiLiveRecording()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeActivityOrientation, isDoingAction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xa

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    if-eq v4, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeActivityOrientation, Activity direction locked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getOrientation()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->isScreenOrientationLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/Util;->getLockedOrientation()I

    move-result v0

    :cond_4
    if-eqz v0, :cond_8

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeScreenOrientation getOrientation err: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xe

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    const/16 v2, 0x9

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    :cond_8
    :goto_2
    move v1, v2

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->setModuleRequestedOrientation(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public checkDisplayOrientation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0oo0o;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0oo0o;-><init>(Lcom/android/camera/module/MiLiveModule;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/FocusManagerAbstract;->setDisplayOrientation(I)V

    :cond_1
    return-void
.end method

.method public closeCamera()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCamera2Device(Lcom/android/camera2/Camera2Proxy;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setAeAwbLock(Z)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->destroy()V

    :cond_1
    return-void
.end method

.method public varargs consumePreference([I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateTypes"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    sparse-switch v3, :sswitch_data_0

    iget-object v4, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no consumer for this updateType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateFrontSoftLightStyle()V

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p0, p0}, Lcom/android/camera/module/BaseModule;->initializeMetaDataCallback(Lcom/android/camera/module/BaseModule;)V

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateKaleidoscope()V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateVideoBokeh()V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    :sswitch_6
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateDeviceOrientation()V

    goto :goto_1

    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateVideoStabilization()V

    goto :goto_1

    :sswitch_8
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateExposureMeteringMode()V

    goto :goto_1

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    :sswitch_a
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomManager()Lcom/android/camera/zoom/ZoomManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/zoom/ZoomManager;->applyZoomRatio()V

    goto :goto_1

    :sswitch_b
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateFpsRange()V

    goto :goto_1

    :sswitch_c
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateFocusMode()V

    goto :goto_1

    :sswitch_d
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateBeauty()V

    goto :goto_1

    :sswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->setEvValue()V

    goto :goto_1

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->updateFlashPreference()V

    goto :goto_1

    :sswitch_10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->updateAntiBanding(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_11
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->updateFace()V

    goto :goto_1

    :sswitch_12
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateFocusArea(Z)V

    goto :goto_1

    :sswitch_13
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updateFilter()V

    goto :goto_1

    :sswitch_14
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->updatePictureAndPreviewSize()V

    :goto_1
    :sswitch_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_13
        0x3 -> :sswitch_12
        0x5 -> :sswitch_11
        0x9 -> :sswitch_10
        0xa -> :sswitch_f
        0xb -> :sswitch_15
        0xc -> :sswitch_e
        0xd -> :sswitch_d
        0xe -> :sswitch_c
        0x13 -> :sswitch_b
        0x14 -> :sswitch_15
        0x18 -> :sswitch_a
        0x19 -> :sswitch_9
        0x1d -> :sswitch_8
        0x1e -> :sswitch_15
        0x1f -> :sswitch_7
        0x22 -> :sswitch_15
        0x23 -> :sswitch_6
        0x2a -> :sswitch_15
        0x2b -> :sswitch_15
        0x2e -> :sswitch_15
        0x2f -> :sswitch_15
        0x30 -> :sswitch_15
        0x32 -> :sswitch_15
        0x36 -> :sswitch_15
        0x37 -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_3
        0x47 -> :sswitch_2
        0x4f -> :sswitch_15
        0x57 -> :sswitch_15
        0x5f -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public doReverse()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string v1, "doReverse"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->deleteLastFragment()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->getSegmentSize()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromKeyBack()Z

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onFinish()V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetZoomPreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->onReviewCancelClicked()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getModuleDeviceParam()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;-><init>(IIILcom/android/camera2/CameraCapabilities;)V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->isEisOn()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->setEisOn(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;

    invoke-virtual {v0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->build()Lcom/android/camera/features/mode/VideoModuleDeviceParam;

    move-result-object p0

    return-object p0
.end method

.method public is3ALocked()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    return p0
.end method

.method public isAEAFLockSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCameraSwitchingDuringZoomingAllowed()Z
    .locals 2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDoingAction()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->impl2()Lcom/android/camera/protocol/protocols/MiLivePlayerControl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFaceDetectStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

    return p0
.end method

.method public isNeedMute()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result p0

    return p0
.end method

.method public isRecording()Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->getCurState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isRecordingPaused()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->getCurState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSelectingCapturedResult()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->impl2()Lcom/android/camera/protocol/protocols/MiLivePlayerControl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowAeAfLockIndicator()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    return p0
.end method

.method public isShowCaptureButton()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isSupportFocusShoot()Z

    move-result p0

    return p0
.end method

.method public isSupportFocusShoot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockAEAF()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "lockAEAF"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAeLockSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setAeAwbLock(Z)V

    iput-boolean v1, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    return-void
.end method

.method public notifyFirstFrameArrived()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAfterFirstFrameArrived.m3ALocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->unlockAEAF()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/FocusManager;->cancelFocus()V

    :cond_0
    return-void
.end method

.method public onActionStop()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "skip stopVideoRecording & remove startVideoRecording"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/MiLiveModule;->pauseVideoRecording(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->doLaterReleaseIfNeed()Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isSelectingCapturedResult()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getLastBackPressedTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setLastBackPressedTime(J)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v0, 0x7f120941

    invoke-static {p0, v0, v3}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3, v3}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    :goto_1
    return v3
.end method

.method public onCameraError()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/xiaomi/camera/rx/CameraSchedulers;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraError()V

    return-void
.end method

.method public onCameraOpened()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->initLiveConfig()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeFocusManager()V

    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->FUN_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->startPreview()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mOnResumeTime:J

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/SoundSetting;->setHeadsetDefaultValue(Landroid/content/Context;I)V

    return-void
.end method

.method public onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V
    .locals 2
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
            "quickViewParam"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineInterface;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x5

    invoke-interface {p0, v0, p1}, Lcom/android/camera/ui/RenderEngineInterface;->requestReadPixels(I[Ljava/lang/Object;)V

    const-string/jumbo p0, "mi_live_click_kaleidoscope_capture"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackKaleidoscopeClick(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moduleIndex",
            "cameraId"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    new-instance p1, Lcom/android/camera/module/MiLiveModule$MainHandler;

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2, p0}, Lcom/android/camera/module/MiLiveModule$MainHandler;-><init>(Lcom/android/camera/module/MiLiveModule;Landroid/os/Looper;Lcom/android/camera/module/MiLiveModule;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/MiLiveModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {p1, p2}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->onCameraOpened()V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->setRotationVectorEnabled(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "onDestroy"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/SensorStateManager;->setRotationVectorEnabled(Z)V

    return-void
.end method

.method public onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;Landroid/graphics/Rect;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraFaces",
            "facePose",
            "cropRegion"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setFaces(I[Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    :cond_2
    :goto_1
    return-void
.end method

.method public onFlatSelfieOnFolded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/base/StartControl;)V

    :cond_2
    return-void
.end method

.method public onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusTask"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_3

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "AutoFocusTime=%1$dms focused=%2$b"

    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isIsDepthFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isFocusing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "onAutoFocusMoving start"

    :cond_4
    sget-object v0, Lcom/android/camera/Util;->sIsDumpLog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getFocusTrigger()I

    move-result v0

    if-ne v0, v3, :cond_9

    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->getElapsedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "FocusTime=%1$dms focused=%2$b"

    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/FocusManager;->onFocusResult(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusTask;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getNullableDevice()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0O0O;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0O0O;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onHibernate()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onKaleidoscopeChanged(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "needShowKaleidoscope"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kaleidoscope"
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x47

    aput v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x58

    const/16 v3, 0x18

    if-eq p1, v3, :cond_9

    const/16 v4, 0x19

    if-eq p1, v4, :cond_9

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_6

    const/16 v4, 0x42

    if-eq p1, v4, :cond_6

    const/16 v4, 0x57

    if-eq p1, v4, :cond_9

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2bc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isPostProcessing()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    goto/16 :goto_3

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isPostProcessing()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    goto :goto_3

    :cond_5
    return v2

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_e

    iget-boolean p1, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->impl2()Lcom/android/camera/protocol/protocols/MiLivePlayerControl;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/MiLivePlayerControl;->startLiveRecordSaving()V

    goto :goto_0

    :cond_7
    const/16 p1, 0x28

    const v0, 0x7f12083d

    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/MiLiveModule;->performKeyClicked(ILjava/lang/String;IZ)V

    :cond_8
    :goto_0
    return v1

    :cond_9
    iget-boolean v4, p0, Lcom/android/camera/module/MiLiveModule;->mIsPreviewing:Z

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    if-eq p1, v3, :cond_c

    if-ne p1, v0, :cond_b

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_2

    :cond_c
    :goto_1
    move v0, v1

    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    :cond_d
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLongPress(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventX",
            "eventY"
        }
    .end annotation

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/module/MiLiveModule;->onSingleTapUp(IIZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isAEAFLockSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->lockAEAF()V

    :cond_1
    return-void
.end method

.method public onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "uri",
            "title"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00OOO;

    invoke-direct {v1, p0, p2, p1}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00OOO;-><init>(Lcom/android/camera/module/MiLiveModule;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onOrientationChanged(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "orientation",
            "orientationCompensation",
            "realTimeOrientation"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->setOrientation(II)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/live/LiveGenericControl;->onOrientationChanged(III)V

    :cond_0
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isGradienterOn()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p3}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/SensorStateManager;->isDeviceLying()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/MiLiveModule;->setOrientation(II)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onPause"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager;->removeMessages()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetScreenOn()V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->closeCamera()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    return-void
.end method

.method public onPauseButtonClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->canRecordingStop()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "too fast to pause recording."

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPauseButtonClick pauseVideoRecording"

    invoke-static {v0, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/camera/module/MiLiveModule;->pauseVideoRecording(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPauseButtonClick resumeVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resumeVideoRecording()V

    :goto_0
    return-void
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "captureStartTime",
            "reason"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineInterface;

    move-result-object p1

    const/4 p2, 0x7

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/android/camera/ui/RenderEngineInterface;->setAnimationType(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineInterface;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/android/camera/ui/RenderEngineInterface;->setPreviewSaveListener(Lcom/android/camera/ui/render_engine/PreviewSaveListener;)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    return-void
.end method

.method public onPreviewRelease(II)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "reason"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onPreviewRelease(II)V

    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->retryOnceIfCameraError()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->previewWhenSessionSuccess()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRenderEngineCreate()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onRenderEngineCreate()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lcom/android/camera/ui/RenderEngineInterface;->addLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/android/camera/ui/RenderEngineInterface;->addLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/ui/RenderEngineInterface;->needFinallyTexture(Z)V

    :cond_0
    return-void
.end method

.method public onRenderEngineDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onRenderEngineDestroy()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineInterface;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lcom/android/camera/ui/RenderEngineInterface;->removeLocalRenderer(I)V

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/android/camera/ui/RenderEngineInterface;->removeLocalRenderer(I)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/ui/RenderEngineInterface;->needFinallyTexture(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onResume"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onReviewCancelClicked"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->finishReview()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->changeScreenOrientation()V

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onReviewDoneClicked"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->finishReview()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->resetToIdle()V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->changeScreenOrientation()V

    return-void
.end method

.method public onShineChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configItem"
        }
    .end annotation

    const/16 v0, 0xc4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xef

    if-eq p1, v0, :cond_1

    const/16 p0, 0xf6

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown configItem changed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-array p1, v2, [I

    const/16 v0, 0xd

    aput v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    const/4 v0, 0x2

    aput v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    :goto_0
    return-void
.end method

.method public onShutterButtonClick(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "skip shutter caz preview paused."

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->getCurState()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShutterButtonClick "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "onShutterButtonClick mode=%d, state=%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v6, :cond_4

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick stopVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v6}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkCallingState()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "ignore in calling state"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getTimeDelayRecord(I)J

    move-result-wide v4

    const-wide/16 v7, 0x12c

    cmp-long v0, v4, v7

    if-gez v0, :cond_6

    move-wide v4, v7

    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mModuleIndex : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  ;timeDelayRecord : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/module/AudioController;->isMusicActive()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    if-eqz v0, :cond_8

    const-wide/16 v7, 0x1f4

    cmp-long v2, v4, v7

    if-gez v2, :cond_7

    move-wide v4, v7

    :cond_7
    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onShutterButtonClick, isMusicBackground: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", timeDelayRecord: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_b

    :cond_9
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "MSG_WAIT_SHUTTER_SOUND_FINISH has in the message queue"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setTriggerMode(I)V

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick startVideoRecording"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->startVideoRecording()V

    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/Camera;->onUserInteraction()V

    :cond_c
    return v6

    :cond_d
    :goto_2
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "onShutterButtonClick : Activity already paused, ignore!"

    invoke-static {p0, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public onSingleTapUp(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventX",
            "eventY",
            "isLongPress"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "onSingleTapUp: frame not available"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0oO0O0o;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0oO0O0o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mTouchFocusStartingTime:J

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->unlockAEAF()V

    invoke-virtual {p0, p3, v0}, Lcom/android/camera/module/BaseModule;->handlePreviewTouchEvent(ZLandroid/graphics/Point;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureReleased()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->onSurfaceTextureReleased()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "attribute"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_0
    return-void
.end method

.method public onThermalConstrained()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->onReviewCancelClicked()V

    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isDoingAction()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->gotoGallery()V

    return-void
.end method

.method public onWaitingFocusFinished()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isBlockSnap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public pausePreview()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigManager;->getConfig()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->forceTurnFlashOffAndPausePreview()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trigger",
            "function",
            "repeatCount",
            "pressed"
        }
    .end annotation

    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ignore volume key"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/MiLiveModule;->onShutterButtonClick(I)Z

    :cond_1
    return-void
.end method

.method public registerProtocol()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "registerProtocol"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v2, Lcom/android/camera/protocol/protocols/CameraAction;

    invoke-virtual {v0, v2, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v2, Lcom/android/camera/protocol/protocols/RunningState;

    invoke-virtual {v0, v2, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v2, Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    invoke-virtual {v0, v2, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v2, Lcom/android/camera/protocol/protocols/KaleidoscopeProtocol;

    invoke-virtual {v0, v2, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/android/camera/protocol/protocols/ConfigChanges;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-class v3, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-class v3, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-class v3, Lcom/android/camera/protocol/protocols/RecordState;

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V

    return-void
.end method

.method public resumePreview()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->previewWhenSessionSuccess()V

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "available"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/camera/MiuiCameraSound;->loadCameraSound(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/camera/MiuiCameraSound;->loadCameraSound(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->isRecording()Z

    move-result p0

    return p0
.end method

.method public startFaceDetection()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getMaxFaceCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigManager;->startFaceDetection()V

    invoke-direct {p0, v0, v0}, Lcom/android/camera/module/MiLiveModule;->updateFaceView(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setMetaDataCallback(Lcom/android/camera2/Camera2Proxy$CameraMetaDataCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getErrorCallback()Lcom/android/camera/CameraErrorCallbackImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setSurfaceCreatedTimestamp(J)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LiveModule, startPreview"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->checkDisplayOrientation()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v3, v2, Lcom/android/camera/CameraSize;->width:I

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    invoke-interface {v0, v3, v2, v4, v5}, Lcom/android/camera/protocol/protocols/live/LiveModuleSub;->initPreview(IIILcom/android/camera/CameraScreenNail;)V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/live/LiveModuleSub;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputSurfaceTexture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v3, v0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v3, v1

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public stopFaceDetection(Z)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearFaces"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionStarted:Z

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigManager;->stopFaceDetection()V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->setActiveIndicator(I)V

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/MiLiveModule;->updateFaceView(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopVideoRecording(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "checkRecordingTime",
            "showReview"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const-string v1, "MiLive stopVideoRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraAudioRestriction(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "skip stopVideoRecording & remove startVideoRecording"

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoRecording checkRecordingTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showReview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->keepScreenOnAwhile()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/milive/LiveRecordState;->canRecordingStop()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "too fast to stop recording."

    invoke-static {p0, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RecordState;->onPostPreview()V

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;->showReview()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string/jumbo v0, "record state post preview fail~"

    invoke-static {p1, v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOO0O()V

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule;->mLiveConfigChanges:Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/milive/MiLiveRecorderControl;->stopRecording()V

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->listenPhoneState(Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public supportMultiCaptureByRunningCondition()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public supportMultiCaptureByStableCondition()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public takePreviewSnapShoot()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/MiLiveModule;->mCaptureTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/CameraSize;->width:I

    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setShotType(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineInterface;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/camera2/Camera2Proxy;->takeSimplePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/ui/RenderEngineInterface;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/MiLiveModule;->mCaptureTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterModulePersistProtocol()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterModulePersistProtocol()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "unRegisterModulePersistProtocol"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "unRegisterProtocol"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CameraAction;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/RunningState;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/KaleidoscopeProtocol;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    return-void
.end method

.method public unlockAEAF()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "unlockAEAF"

    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/android/camera/module/MiLiveModule;->m3ALocked:Z

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAeLockSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setAELock(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/camera2/FocusManager;->setAeAwbLock(Z)V

    return-void
.end method

.method public updateFace()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFaceDetectionOpen()Z

    move-result v0

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00o00;

    invoke-direct {v2, p0, v0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00o00;-><init>(Lcom/android/camera/module/MiLiveModule;Z)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    invoke-virtual {p0}, Lcom/android/camera/module/MiLiveModule;->startFaceDetection()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/MiLiveModule;->stopFaceDetection(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/MiLiveModule;->mFaceDetectionEnabled:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateFlashPreference()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method public updatePreviewSurface()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->updatePreviewSurface()V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    :cond_0
    return-void
.end method

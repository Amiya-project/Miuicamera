.class public Lcom/android/camera/module/video/VideoTrackInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    }
.end annotation


# instance fields
.field private mAIAudioTrackParams:[Ljava/lang/String;

.field private mActualCameraId:I

.field private mAutoHibernation:Z

.field private mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field private mDuration:J

.field private mEV:Ljava/lang/String;

.field private mEnterAutoHibernationCount:I

.field private mExposureTime:Ljava/lang/String;

.field private mFlashMode:I

.field private mFrameRate:I

.field private mHdr10Type:Ljava/lang/String;

.field private mIsAutoZoomEnable:Z

.field private mIsBluetoothScoOn:Z

.field private mIsFrontCamera:Z

.field private mIsSubtitleSupported:Z

.field private mIsSuperEISEnable:Z

.field private mIsUltraWideEnable:Z

.field private mIsVideoPrompterSupported:Z

.field private mIso:Ljava/lang/String;

.field private mLapseCaptureTime:I

.field private mModuleIndex:I

.field private mVideoHdr:Z

.field private mVideoMode:Ljava/lang/String;

.field private mVideoQuality:I

.field private mWhiteBalance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsFrontCamera:Z

    return p1
.end method

.method public static synthetic access$1002(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mActualCameraId:I

    return p1
.end method

.method public static synthetic access$102(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoHdr:Z

    return p1
.end method

.method public static synthetic access$1102(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mModuleIndex:I

    return p1
.end method

.method public static synthetic access$1202(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsAutoZoomEnable:Z

    return p1
.end method

.method public static synthetic access$1302(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsSuperEISEnable:Z

    return p1
.end method

.method public static synthetic access$1402(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsUltraWideEnable:Z

    return p1
.end method

.method public static synthetic access$1502(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoMode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1602(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoQuality:I

    return p1
.end method

.method public static synthetic access$1702(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mFlashMode:I

    return p1
.end method

.method public static synthetic access$1802(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mFrameRate:I

    return p1
.end method

.method public static synthetic access$1902(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mLapseCaptureTime:I

    return p1
.end method

.method public static synthetic access$2002(Lcom/android/camera/module/video/VideoTrackInfo;Lcom/android/camera/fragment/beauty/BeautyValues;)Lcom/android/camera/fragment/beauty/BeautyValues;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mWhiteBalance:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2102(Lcom/android/camera/module/video/VideoTrackInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mDuration:J

    return-wide p1
.end method

.method public static synthetic access$2202(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsSubtitleSupported:Z

    return p1
.end method

.method public static synthetic access$2302(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsVideoPrompterSupported:Z

    return p1
.end method

.method public static synthetic access$2402(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mHdr10Type:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mExposureTime:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mEV:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/android/camera/module/video/VideoTrackInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIso:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/android/camera/module/video/VideoTrackInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mAIAudioTrackParams:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsBluetoothScoOn:Z

    return p1
.end method

.method public static synthetic access$802(Lcom/android/camera/module/video/VideoTrackInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mAutoHibernation:Z

    return p1
.end method

.method public static synthetic access$902(Lcom/android/camera/module/video/VideoTrackInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mEnterAutoHibernationCount:I

    return p1
.end method

.method public static builder()Lcom/android/camera/module/video/VideoTrackInfo$Builder;
    .locals 1

    new-instance v0, Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-direct {v0}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public aIAudioTrackParams()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mAIAudioTrackParams:[Ljava/lang/String;

    return-object p0
.end method

.method public actualCameraId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mActualCameraId:I

    return p0
.end method

.method public autoHibernationCount()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    iget p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mEnterAutoHibernationCount:I

    return p0
.end method

.method public autoZoomEnabled()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoZoom"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsAutoZoomEnable:Z

    return p0
.end method

.method public beautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    return-object p0
.end method

.method public bluetoothScoOn()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBluetoothHeadsetMic"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsBluetoothScoOn:Z

    return p0
.end method

.method public ev()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mEV:Ljava/lang/String;

    return-object p0
.end method

.method public exposureTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mExposureTime:Ljava/lang/String;

    return-object p0
.end method

.method public flashMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mFlashMode:I

    return p0
.end method

.method public frameRate()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mFrameRate:I

    return p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mDuration:J

    return-wide v0
.end method

.method public getHdr10Type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mHdr10Type:Ljava/lang/String;

    return-object p0
.end method

.method public getLapseCaptureTime()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mLapseCaptureTime:I

    return p0
.end method

.method public isFrontCamera()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsFrontCamera:Z

    return p0
.end method

.method public ismAutoHibernation()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoHibernation"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mAutoHibernation:Z

    return p0
.end method

.method public ismIsSuperEISEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsSuperEISEnable:Z

    return p0
.end method

.method public ismVideoHdr()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoHdr:Z

    return p0
.end method

.method public iso()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIso:Ljava/lang/String;

    return-object p0
.end method

.method public moduleIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mModuleIndex:I

    return p0
.end method

.method public subtitleSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsSubtitleSupported:Z

    return p0
.end method

.method public ultraWideEnabled()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAutoZoom"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsUltraWideEnable:Z

    return p0
.end method

.method public videoMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoMode:Ljava/lang/String;

    return-object p0
.end method

.method public videoPrompterSupported()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoPrompter"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mIsVideoPrompterSupported:Z

    return p0
.end method

.method public videoQuality()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mVideoQuality:I

    return p0
.end method

.method public whiteBalance()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/VideoTrackInfo;->mWhiteBalance:Ljava/lang/String;

    return-object p0
.end method

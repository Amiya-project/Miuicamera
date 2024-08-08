.class public Lcom/android/camera/module/TimeFreezeModule;
.super Lcom/android/camera/module/CloneModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/TimeFreezeModule$TimeFreezeState;
    }
.end annotation


# static fields
.field public static final DURATION_VIDEO_RECORDING:I = 0x3a98

.field private static final MAX_VIDEO_SUBJECT_COUNT:I = 0x1

.field public static final STATE_FREEZE:I = 0x4

.field public static final STATE_FREEZE_END:I = 0x8

.field public static final STATE_PREPARE:I = 0x1

.field public static final STATE_PREVIEW:I = 0x10

.field public static final STATE_PREVIEW_PAUSING:I = 0x20

.field public static final STATE_RECORDING:I = 0xe

.field public static final STATE_START:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TimeFreezeModule"


# instance fields
.field private mInSaving:Z

.field private mOriginMaxRatio:F

.field private mOriginMinRatio:F

.field private final mSlideChangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

.field private mStartDetecting:Z

.field private mState:I

.field private maxFreezeRatio:F

.field private minFreezeRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/CloneModule;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    new-instance v0, Lcom/android/camera/module/TimeFreezeModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/TimeFreezeModule$1;-><init>(Lcom/android/camera/module/TimeFreezeModule;)V

    iput-object v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mSlideChangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/TimeFreezeModule;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/module/TimeFreezeModule;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/module/TimeFreezeModule;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/module/TimeFreezeModule;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/module/TimeFreezeModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void
.end method

.method private changeState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->onTimeFreezeStateChange(I)V

    :cond_0
    return-void
.end method

.method private isInRecording()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    and-int/lit8 p0, p0, -0xf

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onTimeFreezeClicked$1(Lcom/android/camera/protocol/protocols/CloneProcess;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cloneProcess"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object p1

    sget-object v0, Lcom/android/camera/fragment/clone/Status;->CAPTURING:Lcom/android/camera/fragment/clone/Status;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->switchTimeFreeze()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setFrameAvailable$0()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/fenshen/FenShenCam;->setFilmFormat(Z)V

    return-void
.end method

.method private pausePlayEffect()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->pausePlayEffect()V

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->onReplayPause()V

    :cond_0
    return-void
.end method

.method private resetEdit()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->pausePlayEffect()V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->editMultiCopy()V

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iget v1, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    iput v1, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    invoke-static {v0, v1}, Lcom/xiaomi/fenshen/FenShenCam;->onMoveDoubleSeekBar(FF)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    invoke-interface {v0, v1, p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->updateEditPos(FF)V

    const/high16 p0, -0x40800000    # -1.0f

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->updatePlayPos(F)V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveDraft()V

    :cond_0
    return-void
.end method

.method private resumePlayEffect()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->resumePlayEffect()V

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->onReplayResume()V

    :cond_0
    return-void
.end method

.method private startFenShenCam()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/module/CloneModule;->mDetectedPerson:Z

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->SHARE:Lcom/android/camera/fragment/clone/Status;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mStartDetecting:Z

    return-void
.end method

.method private switchTimeFreeze()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->stopTimeFreeze()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->startTimeFreeze()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateEditPos()V
    .locals 4

    sget v0, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStartPos:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    sget v2, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeTotalFrames:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    sget v0, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeStopPos:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget v1, Lcom/xiaomi/fenshen/FenShenCam;->mTimeFreezeTotalFrames:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    :cond_0
    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iget v3, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/protocols/CloneProcess;->updateEditPos(FF)V

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/CloneProcess;->updatePlayPos(F)V

    iget-object p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mSlideChangeListener:Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->setSlideChangeListener(Lcom/android/camera/fragment/clone/DoubleSlideSeekBar$onRangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooOOOO(Lcom/android/camera/protocol/protocols/CloneProcess;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->lambda$onTimeFreezeClicked$1(Lcom/android/camera/protocol/protocols/CloneProcess;)V

    return-void
.end method

.method public cancelPhotoOrVideo()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    iget-object p0, p0, Lcom/android/camera/module/CloneModule;->mCaptureState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public changeScreenOrientation()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->supportScreenOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setModuleRequestedOrientation(I)V

    return-void
.end method

.method public dispatchConfigChange(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedItem"
        }
    .end annotation

    const/16 p0, 0xfb

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimeFreezeFilmRatioEnabled()Z

    move-result p0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    xor-int/lit8 v0, p0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->setTimeFreezeFilmRatioEnabled(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-interface {p1, p0, v0}, Lcom/android/camera/protocol/protocols/CloneProcess;->onFilmRatioChanged(ZZ)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDurationVideoRecording()I
    .locals 0

    const/16 p0, 0x3a98

    return p0
.end method

.method public getMaxVideoSubjectCount()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public initCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mMode"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/CloneModule;->mPendingStart:Z

    :cond_0
    return-void
.end method

.method public isVideoMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAdjustClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string/jumbo v2, "onAdjustClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->editMultiCopy()V

    const/4 p0, 0x6

    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->generateThumbnails(I)V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveDraft()V

    :cond_0
    return-void
.end method

.method public onCloneMessage(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/xiaomi/fenshen/FenShenCam$Message;Lcom/android/camera/protocol/protocols/CloneProcess;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mMode",
            "message",
            "cloneProcess",
            "messageId"
        }
    .end annotation

    invoke-interface {p3}, Lcom/android/camera/protocol/protocols/CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object p1

    sget-object v0, Lcom/android/camera/fragment/clone/Status;->SHARE:Lcom/android/camera/fragment/clone/Status;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->EDIT_POS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->updateEditPos()V

    return v1

    :cond_1
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PLAY_ONE_TIME:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_3

    sget-boolean p1, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    const/high16 p0, -0x40800000    # -1.0f

    invoke-interface {p3, p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->updatePlayPos(F)V

    :cond_2
    return v1

    :cond_3
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PLAY_CURRENT_POS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    const/16 v0, 0x10

    const-string v2, "TimeFreezeModule"

    if-ne p2, p1, :cond_5

    sget-boolean p1, Lcom/xiaomi/fenshen/FenShenCam;->sIsEdit:Z

    if-eqz p1, :cond_4

    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-ne p0, v0, :cond_4

    sget p0, Lcom/xiaomi/fenshen/FenShenCam;->mCurrentPlayPos:F

    invoke-interface {p3, p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->updatePlayPos(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "currentPos: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v1

    :cond_5
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne p2, p1, :cond_8

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p2, "too much movement, stop capture"

    invoke-static {v2, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f1202d5

    invoke-interface {p3, p1, v1}, Lcom/android/camera/protocol/protocols/CloneProcess;->updateCaptureMessage(IZ)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v4}, Lcom/android/camera/module/CloneModule;->onShutterButtonClick(IZ)V

    goto :goto_0

    :cond_6
    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-ne p0, v3, :cond_7

    invoke-interface {p3}, Lcom/android/camera/protocol/protocols/CloneProcess;->onCountDownFinished()V

    :cond_7
    :goto_0
    return v1

    :cond_8
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eq p2, p1, :cond_b

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_9

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-eq p2, p1, :cond_a

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_c

    :cond_a
    invoke-interface {p3, v4}, Lcom/android/camera/protocol/protocols/CloneProcess;->setDetectedPersonInPreview(Z)V

    invoke-interface {p3}, Lcom/android/camera/protocol/protocols/CloneProcess;->hideCaptureMessage()V

    iput-boolean v4, p0, Lcom/android/camera/module/CloneModule;->mDetectedPerson:Z

    return v1

    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-interface {p3, v1}, Lcom/android/camera/protocol/protocols/CloneProcess;->setDetectedPersonInPreview(Z)V

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCaptureMessage "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_d

    return v4

    :cond_d
    iget p0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_e

    sget-object p1, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

    if-ne p2, p1, :cond_e

    const p4, 0x7f120a01

    :cond_e
    if-ne p0, v3, :cond_f

    const p4, 0x7f120a00

    :cond_f
    const/16 p1, 0x8

    if-ne p0, p1, :cond_10

    invoke-interface {p3}, Lcom/android/camera/protocol/protocols/CloneProcess;->hideCaptureMessage()V

    return v1

    :cond_10
    if-ne p0, v0, :cond_11

    return v4

    :cond_11
    invoke-interface {p3, p4, v1}, Lcom/android/camera/protocol/protocols/CloneProcess;->updateCaptureMessage(IZ)V

    return v4
.end method

.method public onCreate(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mMode"
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mStartDetecting:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void
.end method

.method public onError()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string/jumbo v2, "onError"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oOo000Oo;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oOo000Oo;-><init>(Lcom/android/camera/module/TimeFreezeModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0OO00o;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0OO00o;-><init>(Lcom/android/camera/module/TimeFreezeModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onExitClicked()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onExitClicked()V

    const-string/jumbo p0, "value_time_freeze_exit_confirm"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onFragmentResume()V

    iget-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mStartDetecting:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CloneModule;->mPendingStart:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->startFenShenCam()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    return-void
.end method

.method public onGiveUpEditClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string/jumbo v2, "onGiveUpEditClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resetEdit()V

    :cond_0
    return-void
.end method

.method public onHostStopAndNotifyActionStop(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->switchTimeFreeze()V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onPause()V

    return-void
.end method

.method public onPlayClicked()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string/jumbo v2, "onPlayClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resumePlayEffect()V

    :cond_0
    return-void
.end method

.method public onResetEditClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string/jumbo v2, "onResetEditClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resetEdit()V

    :cond_0
    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 3

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/fragment/clone/Config;->setCloneMode(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CloneProcess;->quit()V

    :cond_0
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V

    :cond_2
    return-void
.end method

.method public onSaveEditClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mMode:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string/jumbo v2, "onConfirmClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->minFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMinRatio:F

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->maxFreezeRatio:F

    iput v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mOriginMaxRatio:F

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->saveEdit()V

    :cond_0
    return-void
.end method

.method public onShutterButtonClick(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/module/CloneModule;->mCaptureState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "TimeFreezeModule"

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "ignore onShutterButtonClick"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/CloneModule;->mCaptureState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    iget-boolean p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/RecordState;->impl2()Lcom/android/camera/protocol/protocols/RecordState;

    move-result-object p1

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p1

    if-eqz p1, :cond_9

    iget v5, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    if-eq v5, v4, :cond_7

    if-eq v5, v1, :cond_6

    const/4 v1, 0x4

    if-eq v5, v1, :cond_5

    const/16 v1, 0x8

    if-eq v5, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1, v5}, Lcom/android/camera/protocol/protocols/CloneProcess;->onTimeFreezeStateChange(I)V

    const-string/jumbo p1, "value_time_freeze_stop_record"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/camera/module/CloneModule;->mFrameCount:I

    const/16 v1, 0xf

    if-ge p1, v1, :cond_4

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "ignore onShutterButtonClick cause frameCount < 15"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(Z)V

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->stopCaptureToPreviewResult()V

    invoke-direct {p0, v3}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "value_time_freeze_click_reset"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->onTimeFreezeClicked()V

    goto :goto_0

    :cond_6
    invoke-interface {p1, v5}, Lcom/android/camera/protocol/protocols/CloneProcess;->onTimeFreezeStateChange(I)V

    const-string/jumbo p1, "value_time_freeze_click_freeze"

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->onTimeFreezeClicked()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->delayTriggerShooting()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onSingleTapUp(IIZ)V
    .locals 0
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

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onStop()V

    invoke-static {}, Lcom/xiaomi/fenshen/FenShenCam;->cancelVideo()V

    return-void
.end method

.method public onTimeFreezeClicked()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TimeFreezeModule"

    const-string/jumbo v2, "onTimeFreezeClicked"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0o00O;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0o00O;-><init>(Lcom/android/camera/module/TimeFreezeModule;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTouchDown(FF)Z
    .locals 9
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

    iget v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTouchDown  ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "TimeFreezeModule"

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_DOWN:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v3 .. v8}, Lcom/xiaomi/fenshen/FenShenCam;->sendTouchEvent(Lcom/xiaomi/fenshen/FenShenCam$TEventType;FFFFF)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/camera/module/TimeFreezeModule;->mState:I

    const/16 p2, 0x20

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->resumePlayEffect()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->pausePlayEffect()V

    :cond_2
    :goto_0
    return v1
.end method

.method public onVideoSaveFinish()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    iget-object v0, p0, Lcom/android/camera/module/CloneModule;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->onVideoSaveFinish()V

    :cond_0
    return-void
.end method

.method public resumePreviewIfNeeded()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TimeFreezeModule"

    const-string/jumbo v3, "resumePreviewIfNeeded"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/module/CloneModule;->mIsFinished:Z

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->resumePreview()V

    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->cancelPhotoOrVideo()V

    return-void
.end method

.method public saveVideo()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/TimeFreezeModule;->mInSaving:Z

    invoke-super {p0}, Lcom/android/camera/module/CloneModule;->saveVideo()V

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "available"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/module/CloneModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0o0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O0o0;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->startFenShenCam()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->onFrameAvailable()V

    :cond_0
    return-void
.end method

.method public setVideoCodec()V
    .locals 1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoEncoder()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "video/hevc"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "video/avc"

    :goto_0
    invoke-static {p0}, Lcom/xiaomi/fenshen/FenShenCam;->setVideoCodec(Ljava/lang/String;)V

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/TimeFreezeModule;->isInRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/module/CloneModule;->mIsFinished:Z

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

.method public startCountDown()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/camera/module/TimeFreezeModule;->getDurationVideoRecording()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1c2

    add-long v6, v0, v2

    new-instance v0, Lcom/android/camera/module/TimeFreezeModule$2;

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/module/TimeFreezeModule$2;-><init>(Lcom/android/camera/module/TimeFreezeModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/CloneModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public startPreviewSession()V
    .locals 9

    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CloneProcess;->getStatus()Lcom/android/camera/fragment/clone/Status;

    move-result-object v0

    sget-object v1, Lcom/android/camera/fragment/clone/Status;->SHARE:Lcom/android/camera/fragment/clone/Status;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "TimeFreezeModule"

    const-string/jumbo v1, "startPreview: camera has been closed"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setDualCamWaterMarkEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera2/Camera2Proxy;->setFocusCallback(Lcom/android/camera2/Camera2Proxy$FocusCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getErrorCallback()Lcom/android/camera/CameraErrorCallbackImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CloneModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureMaxImages(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureFormat(I)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setSurfaceCreatedTimestamp(J)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    new-instance v2, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public startVideoRecording(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/protocols/CloneProcess;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "cloneProcess"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CloneModule;->startVideoRecording(Lcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/protocols/CloneProcess;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTimeFreezeRecord(Z)V

    return-void
.end method

.method public stopCaptureToPreviewResult(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    return-void
.end method

.method public stopVideoRecording(ZLcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/protocols/CloneProcess;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "giveUp",
            "mode",
            "cloneProcess"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/CloneModule;->stopVideoRecording(ZLcom/xiaomi/fenshen/FenShenCam$Mode;Lcom/android/camera/protocol/protocols/CloneProcess;)V

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p2

    invoke-static {p2}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOO0O()V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/camera/protocol/protocols/CloneProcess;->hideCaptureMessage()V

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/android/camera/module/TimeFreezeModule;->changeState(I)V

    :cond_1
    return-void
.end method

.method public updatePictureAndPreviewSize()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePictureAndPreviewSize previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TimeFreezeModule"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v2, 0x500

    const/16 v4, 0x3c0

    invoke-direct {v0, v2, v4}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/module/CloneModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/16 v2, 0x23

    invoke-static {v0, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    const v6, 0x12c000

    invoke-static {v0, v6, v2, v4, v5}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePictureAndPreviewSize sizeLimit "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureSize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgorithmPreviewSize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/CloneModule;->mAlgorithmPreviewSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

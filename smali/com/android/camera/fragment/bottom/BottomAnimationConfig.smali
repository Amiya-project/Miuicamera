.class public Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
.super Ljava/lang/Object;


# instance fields
.field public mBypassAnimation:Z

.field public mCurrentMode:I

.field public mDuration:I

.field public mIsFPS960:Z

.field public mIsInMimojiCreate:Z

.field public mIsMotion3840:Z

.field public mIsPostProcessing:Z

.field public mIsRecordingCircle:Z

.field public mIsRoundingCircle:Z

.field public mIsSpecificCaptureTime:Z

.field public mIsStart:Z

.field public mIsTimerBurstCircle:Z

.field public mIsVertical:Z

.field public mNeedFinishRecord:Z

.field public mSecondPaintHintEnable:Z

.field public mShouldRepeat:Z

.field public mStopButtonEnabled:Z


# direct methods
.method private constructor <init>(ZIZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isPostProcessing",
            "currentMode",
            "isStart",
            "isFPS960",
            "isMotion3840"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mSecondPaintHintEnable:Z

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    iput p2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    iput-boolean p3, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    iput-boolean p4, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    iput-boolean p5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsMotion3840:Z

    return-void
.end method

.method public static generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isPostProcessing",
            "currentMode",
            "isStart",
            "isFPS960",
            "isMotion3840"
        }
    .end annotation

    new-instance v6, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;-><init>(ZIZZZ)V

    return-object v6
.end method


# virtual methods
.method public configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;
    .locals 14

    const-class v0, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    const/16 v2, 0x7d0

    const/16 v3, 0xd9

    const/16 v4, 0xd4

    const/16 v5, 0xad

    const/16 v6, 0xa3

    const/16 v7, 0xa1

    const/16 v8, 0xb8

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    iput v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v1

    iget v10, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v1, v10}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    if-eq v11, v7, :cond_d

    const/16 v12, 0x3a98

    if-eq v11, v6, :cond_c

    const/16 v13, 0xa7

    if-eq v11, v13, :cond_b

    const/16 v13, 0xab

    if-eq v11, v13, :cond_a

    if-eq v11, v5, :cond_7

    const/16 v2, 0x2710

    if-eq v11, v4, :cond_6

    const/16 v10, 0xd7

    if-eq v11, v10, :cond_5

    if-eq v11, v3, :cond_4

    const/16 v10, 0xb7

    if-eq v11, v10, :cond_3

    if-eq v11, v8, :cond_1

    iput v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->isInMimojiGif()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    :cond_2
    iput v12, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x27d8

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    :cond_5
    iput v12, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    :cond_6
    iput v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto/16 :goto_0

    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isLongNightCaptureAnimEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v10}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightCaptureWithKnownDuration()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    xor-int/2addr v1, v9

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mSecondPaintHintEnable:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMultiFrameTotalCaptureDuration()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_0

    :cond_9
    iput v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    goto :goto_0

    :cond_a
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    invoke-virtual {v10}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->isLongExpose()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v10, 0xf4240

    div-long/2addr v1, v10

    long-to-int v1, v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_0

    :cond_c
    iput v12, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    invoke-virtual {v10}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    goto :goto_0

    :cond_d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    invoke-static {}, Lcom/android/camera/protocol/protocols/LiveSpeedChanges;->impl2()Lcom/android/camera/protocol/protocols/LiveSpeedChanges;

    move-result-object v1

    if-eqz v1, :cond_e

    iget v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    int-to-float v2, v2

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/LiveSpeedChanges;->getRecordSpeed()F

    move-result v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    :cond_e
    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/4 v2, 0x0

    if-eq v1, v6, :cond_f

    if-eq v1, v7, :cond_f

    if-eq v1, v8, :cond_f

    if-eq v1, v5, :cond_f

    iget-boolean v5, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-nez v5, :cond_f

    const/16 v5, 0xbd

    if-eq v1, v5, :cond_f

    if-eq v1, v3, :cond_f

    if-eq v1, v4, :cond_f

    move v1, v9

    goto :goto_1

    :cond_f
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsTimerBurstCircle:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsSpecificCaptureTime:Z

    if-eqz v1, :cond_11

    :cond_10
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    :cond_11
    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsFPS960:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsPostProcessing:Z

    if-nez v1, :cond_12

    move v1, v9

    goto :goto_2

    :cond_12
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mNeedFinishRecord:Z

    iput-boolean v9, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    iget v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v3, 0xbb

    if-ne v1, v3, :cond_13

    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->impl2()Lcom/android/camera/protocol/protocols/AmbilightProtocol;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->shouldDisableStopButton()Z

    move-result v1

    xor-int/2addr v1, v9

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->getAutoFinish()Z

    move-result v1

    xor-int/2addr v1, v9

    iput-boolean v1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->getAutoFinish()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsRecordingCircle:Z

    goto :goto_3

    :cond_13
    const/16 v3, 0xd0

    if-eq v1, v3, :cond_14

    if-ne v1, v8, :cond_15

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->isInMimojiGif()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    iput-boolean v2, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mStopButtonEnabled:Z

    :cond_15
    :goto_3
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVertical:Z

    return-object p0
.end method

.method public isLongExpose()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    iget p0, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mCurrentMode:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p0

    return p0
.end method

.method public setSpecifiedDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mDuration:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mShouldRepeat:Z

    return-void
.end method

.class public interface abstract Lcom/android/camera/protocol/protocols/ConfigChanges;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/protocols/ConfigChanges$ConfigCheckType;
    }
.end annotation


# static fields
.field public static final CHECK_TYPE_FORCE_CLOSE:I = 0x4

.field public static final CHECK_TYPE_MANUALLY:I = 0x1

.field public static final CHECK_TYPE_MUTEX:I = 0x3

.field public static final CHECK_TYPE_WATCH:I = 0x2


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/ConfigChanges;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ConfigChanges;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/ConfigChanges;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/ConfigChanges;

    return-object v0
.end method


# virtual methods
.method public abstract closeCvLens()V
.end method

.method public varargs abstract closeMutexElement(Ljava/lang/String;[I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trigger",
            "items"
        }
    .end annotation
.end method

.method public abstract configCenterMarkSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configCinematicAspectRatio(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configClone(Lcom/xiaomi/fenshen/FenShenCam$Mode;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "enter"
        }
    .end annotation
.end method

.method public abstract configExposureFeedbackSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configFilm(Lcom/android/camera/fragment/film/FilmItem;ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filmItem",
            "start",
            "saveComplete"
        }
    .end annotation
.end method

.method public abstract configFlash(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newConfig",
            "isReConfigHDRIfFlashChanged"
        }
    .end annotation
.end method

.method public abstract configFocusPeakSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configGradienterSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configHdr(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation
.end method

.method public abstract configLiveMusicSelect()V
.end method

.method public abstract configLiveShotSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configLiveVV(Lcom/android/camera/fragment/vv/VVItem;Lcom/android/camera/fragment/vv/VVWorkspaceItem;ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vvItem",
            "workspaceItem",
            "start",
            "saveComplete"
        }
    .end annotation
.end method

.method public abstract configMeter(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation
.end method

.method public abstract configMotionDetectionSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configNearRangeMode()V
.end method

.method public abstract configRawSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configReferenceSwitch(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract configRotationChange(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "show",
            "degree"
        }
    .end annotation
.end method

.method public abstract configSwitchUltraPixel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configTiltSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configTimeFreeze(Lcom/xiaomi/fenshen/FenShenCam$Mode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract configTimerSwitch(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract configVideoLogSwitch(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkType"
        }
    .end annotation
.end method

.method public abstract configVlogPro(Lcom/android/camera/fragment/vlogpro/VPItem;Lcom/android/camera/fragment/vlogpro/VPWorkspaceItem;ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "VPItem",
            "workspaceItem",
            "start",
            "saveComplete"
        }
    .end annotation
.end method

.method public abstract findBestWatermarkItem(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract hideLighting()V
.end method

.method public abstract notifyFlatSelfieOnFolded()V
.end method

.method public abstract onConfigChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configItem"
        }
    .end annotation
.end method

.method public abstract onConfigValueChanged(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configItem",
            "value"
        }
    .end annotation
.end method

.method public abstract onLowBatteryNotification(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation
.end method

.method public abstract onNightTipClicked()V
.end method

.method public abstract onShineDismiss(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callingFrom"
        }
    .end annotation
.end method

.method public abstract onThermalNotification(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempStage"
        }
    .end annotation
.end method

.method public abstract reCheckAIWatermark(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlyTip"
        }
    .end annotation
.end method

.method public abstract reCheckAiAudio()V
.end method

.method public abstract reCheckAiAudioNewDescTip()V
.end method

.method public abstract reCheckAiAudioSingle()V
.end method

.method public abstract reCheckAiAudioSingleDescTip()V
.end method

.method public abstract reCheckAiEnhancedVideo()V
.end method

.method public abstract reCheckAiScene()V
.end method

.method public abstract reCheckAmbientLightNeedFlshDescTip()V
.end method

.method public abstract reCheckAmbilight()V
.end method

.method public abstract reCheckBeautyMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation
.end method

.method public abstract reCheckCenterMark()V
.end method

.method public abstract reCheckColorEnhance()V
.end method

.method public abstract reCheckCvType()V
.end method

.method public abstract reCheckDocumentMode()V
.end method

.method public abstract reCheckDualVideoMode()V
.end method

.method public abstract reCheckExposureFeedbackConfig()V
.end method

.method public abstract reCheckFastMotion(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anim"
        }
    .end annotation
.end method

.method public abstract reCheckFilm()V
.end method

.method public abstract reCheckFocusPeakConfig()V
.end method

.method public abstract reCheckFrontBokenTip()V
.end method

.method public abstract reCheckGradienter()V
.end method

.method public abstract reCheckHanGestureDescTip()V
.end method

.method public abstract reCheckHandGesture()V
.end method

.method public abstract reCheckLighting()V
.end method

.method public abstract reCheckLiveDurationTip()V
.end method

.method public abstract reCheckLiveShot()V
.end method

.method public abstract reCheckMacroMode()V
.end method

.method public abstract reCheckMimojiMode()V
.end method

.method public abstract reCheckModuleUltraPixel()V
.end method

.method public abstract reCheckMutexConfigs(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMode"
        }
    .end annotation
.end method

.method public abstract reCheckParameterDescriptionTip()V
.end method

.method public abstract reCheckParameterResetTip(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRefrensh"
        }
    .end annotation
.end method

.method public abstract reCheckPortraitRepair()V
.end method

.method public abstract reCheckRaw()V
.end method

.method public abstract reCheckRecommendLandscapeDescTip()V
.end method

.method public abstract reCheckSpeechShutterDescTip()V
.end method

.method public abstract reCheckSubtitleMode()V
.end method

.method public abstract reCheckSuperEIS()V
.end method

.method public abstract reCheckSuperEISPro()V
.end method

.method public abstract reCheckSuperNightVideo4KTip()V
.end method

.method public abstract reCheckTilt()V
.end method

.method public abstract reCheckTimerBurst()V
.end method

.method public abstract reCheckUltraWideBokeh()V
.end method

.method public abstract reCheckVideo4KHDR10P()V
.end method

.method public abstract reCheckVideoBeautify()V
.end method

.method public abstract reCheckVideoBeautyPipeline(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isNeedAnimConfig",
            "isNeedResetTopTip"
        }
    .end annotation
.end method

.method public abstract reCheckVideoCastPauseState()V
.end method

.method public abstract reCheckVideoHDR10Tip()V
.end method

.method public abstract reCheckVideoHdr()V
.end method

.method public abstract reCheckVideoLog()V
.end method

.method public abstract reCheckVideoUltraClearTip()V
.end method

.method public abstract reCheckWidgetIntent()V
.end method

.method public abstract reCheckXXXMDescTip()V
.end method

.method public abstract reConfigAiAudio(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modeIndex",
            "isInRecordingState"
        }
    .end annotation
.end method

.method public abstract reConfigESPDisplay(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFisrtShow"
        }
    .end annotation
.end method

.method public abstract reConfigSpeechShutter()V
.end method

.method public abstract recheckTopTipMaxWidth()V
.end method

.method public abstract recheckVideoFps(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeChange"
        }
    .end annotation
.end method

.method public abstract resetMeter(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMode"
        }
    .end annotation
.end method

.method public abstract restoreAllMutexElement(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation
.end method

.method public abstract restoreMutexFlash(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation
.end method

.method public abstract setBeautyLens(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract setCVLens(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract setFilter(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterId"
        }
    .end annotation
.end method

.method public abstract setKaleidoscope(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kaleidoscope"
        }
    .end annotation
.end method

.method public abstract setLighting(ZLjava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isExit",
            "oldValue",
            "newValue",
            "fromUser"
        }
    .end annotation
.end method

.method public abstract setMasterFilter(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterId"
        }
    .end annotation
.end method

.method public abstract setSkinColor(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setVideoSky(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterValue"
        }
    .end annotation
.end method

.method public abstract setWatermarkEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract showMimojiPanel(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimojiPanelState"
        }
    .end annotation
.end method

.method public abstract showOrHideAIWatermark()V
.end method

.method public abstract showOrHideLighting(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromUser"
        }
    .end annotation
.end method

.method public abstract showOrHideMasterFilter()V
.end method

.method public abstract showOrHideShine()V
.end method

.method public abstract showOrHideVideoBokeh(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShown"
        }
    .end annotation
.end method

.method public abstract showOrHideVideoSky(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromTopConfig"
        }
    .end annotation
.end method

.method public abstract showSetting()V
.end method

.method public abstract showWatermarkSample(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public varargs abstract switchOffElementsSilent([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation
.end method

.method public abstract updateASDForWatermark()V
.end method

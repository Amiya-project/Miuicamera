.class public Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/protocols/RecordState;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingState"


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendShutterStateListener:Lcom/android/camera/ui/SuspendShutterListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityBase"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/camera/Camera;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getSuspendShutterListener()Lcom/android/camera/ui/SuspendShutterListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mSuspendShutterStateListener:Lcom/android/camera/ui/SuspendShutterListener;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityBase"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    check-cast p0, Lcom/android/camera/Camera;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getCurrentModuleIndex()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    if-nez p0, :cond_0

    const/16 p0, 0xa0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentModuleIndex()I

    move-result p0

    return p0
.end method

.method private hideHint()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1203ec

    goto :goto_0

    :cond_0
    const v1, 0x7f1206fc

    :goto_0
    const-string v2, "esp_display"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSwitchTip(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onFinish$0(Lcom/android/camera/protocol/VideoPrompterProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/VideoPrompterProtocol;->onVideoRecordingStop(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onPostSavingStart$1(Lcom/android/camera/protocol/protocols/DualController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    return-void
.end method

.method private updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "topAlert",
            "visible"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isReal8K()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    if-eqz p1, :cond_9

    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    const v0, 0x7f120a7a

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10PlusModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const v0, 0x7f120a7b

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ProModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    const v0, 0x7f120a7c

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_3
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO000o()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    const v0, 0x7f120a96

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const v0, 0x7f120a98

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    const v0, 0x7f120832

    invoke-interface {p1, p2, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(II)V

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xd0

    const-wide/16 v1, -0x1

    const/16 v3, 0x8

    if-eq p2, v0, :cond_8

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p2

    const/16 v0, 0xd4

    if-ne p2, v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 p2, 0xcf

    if-ne p0, p2, :cond_9

    const p0, 0x7f12041b

    invoke-interface {p1, v3, p0, v1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_3

    :cond_8
    :goto_2
    const p0, 0x7f120420

    invoke-interface {p1, v3, p0, v1, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/protocol/VideoPrompterProtocol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->lambda$onFinish$0(Lcom/android/camera/protocol/VideoPrompterProtocol;)V

    return-void
.end method

.method public needHideSmartShutter()Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportSuspendShutter"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0Oo0oo0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mSuspendShutterStateListener:Lcom/android/camera/ui/SuspendShutterListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/ui/SuspendShutterListener;->getSuspendShutterVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needShowSmartShutter()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportSuspendShutter"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0Oo0oo0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mSuspendShutterStateListener:Lcom/android/camera/ui/SuspendShutterListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/SuspendShutterListener;->getSuspendShutterVisibility()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSuspendShutterOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mSuspendShutterStateListener:Lcom/android/camera/ui/SuspendShutterListener;

    invoke-interface {p0}, Lcom/android/camera/ui/SuspendShutterListener;->getIsBack()I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFailed()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RecordingState"

    const-string/jumbo v2, "onFailed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->onFinish()V

    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->getInstance()Lcom/android/camera/aftersales/AftersalesManager;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/aftersales/AftersalesManager;->count(JI)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFailed()V

    return-void
.end method

.method public onFinish()V
    .locals 12

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RecordingState"

    const-string/jumbo v3, "onFinish"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/VideoPrompterProtocol;->impl()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0o0Oo;

    invoke-direct {v2, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0o0Oo;-><init>(Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->needShowSmartShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mSuspendShutterStateListener:Lcom/android/camera/ui/SuspendShutterListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/SuspendShutterListener;->setSuspendShutterVisibility(I)V

    :cond_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/protocol/protocols/HaloProtocol;->impl2()Lcom/android/camera/protocol/protocols/HaloProtocol;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/protocol/protocols/ThumbnailProtocol;->impl2()Lcom/android/camera/protocol/protocols/ThumbnailProtocol;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v6, v0, v8}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v6

    const/16 v9, 0xa7

    const/4 v10, 0x2

    if-eq v6, v9, :cond_22

    const/16 v9, 0xa9

    const/16 v11, 0xd0

    if-eq v6, v9, :cond_1b

    const/16 v9, 0xb7

    if-eq v6, v9, :cond_18

    const/16 v9, 0xbb

    if-eq v6, v9, :cond_16

    const/16 v9, 0xcc

    if-eq v6, v9, :cond_13

    const/16 v9, 0xd4

    if-eq v6, v9, :cond_11

    const/16 v9, 0xd7

    if-eq v6, v9, :cond_18

    const/16 v9, 0xd9

    if-eq v6, v9, :cond_f

    const/16 v9, 0xdb

    if-eq v6, v9, :cond_d

    const/16 v9, 0xb3

    if-eq v6, v9, :cond_b

    const/16 v9, 0xb4

    if-eq v6, v9, :cond_6

    const/16 v9, 0xcf

    if-eq v6, v9, :cond_3

    if-eq v6, v11, :cond_1b

    goto/16 :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_5
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setConfigMenuResetWhenRestartmode()V

    invoke-interface {v1, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_2

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    invoke-interface {v1, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->onRecordingStop()V

    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-interface {p0, v8}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterResetTip(Z)V

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterDescriptionTip()V

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudio()V

    goto/16 :goto_2

    :cond_b
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingPause()V

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingFinish()V

    goto/16 :goto_2

    :cond_d
    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/protocols/VlogProProcess;->impl2()Lcom/android/camera/protocol/protocols/VlogProProcess;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/VlogProProcess;->processingFinish()V

    goto/16 :goto_2

    :cond_f
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->processingFinish()V

    :cond_10
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    invoke-interface {v1, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->processingFinish()V

    :cond_12
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    invoke-interface {v1, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    goto/16 :goto_2

    :cond_13
    if-eqz v2, :cond_14

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_14
    if-eqz v3, :cond_15

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_15
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    invoke-interface {v1, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    new-array p0, v8, [I

    const/16 v2, 0xc5

    aput v2, p0, v0

    invoke-interface {v1, v8, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->enableMenuItem(Z[I)V

    goto/16 :goto_2

    :cond_16
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->impl2()Lcom/android/camera/protocol/protocols/AmbilightSelector;

    move-result-object p0

    if-eqz v3, :cond_17

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_17
    if-eqz p0, :cond_2c

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->onRecordingStop()V

    goto/16 :goto_2

    :cond_18
    if-eqz v2, :cond_19

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_19
    if-eqz v3, :cond_1a

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_1a
    if-eqz v1, :cond_2c

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    invoke-interface {v1, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    const/4 p0, 0x5

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-interface {v1, v8, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->enableMenuItem(Z[I)V

    invoke-interface {v1, v8}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMusicClose(Z)V

    goto/16 :goto_2

    :cond_1b
    if-eqz v2, :cond_1c

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_1c
    if-eqz v3, :cond_1e

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    if-ne p0, v11, :cond_1d

    invoke-interface {v3, v8, v8}, Lcom/android/camera/protocol/protocols/ActionProcessing;->enableStopButton(ZZ)V

    :cond_1d
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_1e
    if-eqz v1, :cond_20

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    :cond_1f
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    invoke-interface {v1, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    :cond_20
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterDescriptionTip()V

    invoke-interface {v4, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigESPDisplay(Z)V

    :cond_21
    if-eqz v4, :cond_2c

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckMacroMode()V

    invoke-interface {v4, v8}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterResetTip(Z)V

    goto/16 :goto_2

    :cond_22
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object v6

    if-eqz v6, :cond_23

    invoke-interface {v6, v8}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->setManuallyLayoutVisible(Z)V

    :cond_23
    invoke-static {}, Lcom/android/camera/protocol/protocols/ProExtra;->impl2()Lcom/android/camera/protocol/protocols/ProExtra;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-interface {v6, v8}, Lcom/android/camera/protocol/protocols/ProExtra;->setExtraVisibility(Z)Z

    move-result v6

    goto :goto_0

    :cond_24
    move v6, v0

    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v9

    if-eqz v6, :cond_25

    if-eqz v9, :cond_25

    invoke-interface {v9, v8}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->setMaskCoverVisibility(Z)Z

    :cond_25
    :goto_1
    if-eqz v2, :cond_26

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateDynamicImageLayoutParams()V

    invoke-interface {v2}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_26
    if-eqz v3, :cond_27

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_27
    if-eqz v1, :cond_28

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    invoke-interface {v1, v10}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    :cond_28
    if-eqz v4, :cond_29

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckMacroMode()V

    invoke-interface {v4, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->recheckVideoFps(Z)V

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiEnhancedVideo()V

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudio()V

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckAiAudioSingle()V

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckMimojiMode()V

    invoke-interface {v4, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigESPDisplay(Z)V

    :cond_29
    iget-object p0, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    if-eqz v5, :cond_2a

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraIntentManager;->isVideoCaptureIntent()Z

    move-result p0

    if-eqz p0, :cond_2a

    invoke-interface {v5, v0}, Lcom/android/camera/protocol/protocols/HaloProtocol;->disableFrontFlashAndHalo(Z)V

    :cond_2a
    if-eqz v7, :cond_2b

    invoke-interface {v7, v8}, Lcom/android/camera/protocol/protocols/ThumbnailProtocol;->setThumbnailClickEnable(Z)V

    :cond_2b
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000O()Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isOCREnabled()Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->releaseRegionDetection(I)V

    :cond_2c
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xf5
        0x103
        0xc6
        0xb5
    .end array-data
.end method

.method public onLongExposeCaptureCompleted()V
    .locals 0

    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingLongExposeCaptureCompleted()V

    return-void
.end method

.method public onLongExposePrepare()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingLongExposePrepare()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v1, 0xad

    if-ne p0, v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    :cond_0
    return-void
.end method

.method public onLongExposeStart()V
    .locals 0

    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingLongExposeStart()V

    return-void
.end method

.method public onPause()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RecordingState"

    const-string/jumbo v3, "onPause"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v4

    invoke-direct {p0, v3, v0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v5, 0xb3

    if-eq p0, v5, :cond_6

    const/16 v5, 0xb7

    const/4 v6, 0x1

    if-eq p0, v5, :cond_5

    const/16 v5, 0xcc

    if-eq p0, v5, :cond_4

    const/16 v0, 0xd4

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd7

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xdb

    if-eq p0, v0, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPause()V

    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/VlogProProcess;->impl2()Lcom/android/camera/protocol/protocols/VlogProProcess;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/VlogProProcess;->processingPause()V

    goto :goto_0

    :cond_2
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->processingPause()V

    goto :goto_0

    :cond_3
    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->processingPause()V

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPause()V

    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    new-array p0, v6, [I

    const/16 v1, 0xc5

    aput v1, p0, v0

    invoke-interface {v3, v6, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->disableMenuItem(Z[I)V

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPause()V

    invoke-interface {v3, v2}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    invoke-interface {v4}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    const/4 p0, 0x5

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-interface {v3, v6, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->disableMenuItem(Z[I)V

    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingPause()V

    :cond_7
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc5
        0xf5
        0x103
        0xc6
        0xb5
    .end array-data
.end method

.method public onPostPreview()V
    .locals 2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "RecordingState"

    const-string/jumbo v1, "onPostPreview"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromShutter()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingWorkspace()V

    return-void
.end method

.method public onPostSavingFinish()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RecordingState"

    const-string/jumbo v3, "onPostSavingFinish"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v3, 0xa6

    const/4 v4, 0x0

    if-eq p0, v3, :cond_5

    const/16 v2, 0xac

    if-eq p0, v2, :cond_2

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->impl2()Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0, v4, v4, v4}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->updatePreviewBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->recheckVideoFps(Z)V

    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/protocols/SlowMotionViewProtocol;->setMotionDetectionViewAlpha(I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl2()Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    move-result-object p0

    if-eqz p0, :cond_6

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "onPostExecute setDisplayPreviewBitmap null"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0, v4}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->showSmallPreview(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onPostSavingStart(I)V
    .locals 12
    .param p1    # I
        .annotation build Lcom/android/camera/protocol/protocols/RecordState$PostAction;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPostSaving: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RecordingState"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v2

    const/4 v4, 0x1

    const/16 v5, 0xd0

    if-ne v2, v5, :cond_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->setConfigMenuResetWhenRestartmode()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->showConfigMenu()V

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v4}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v5

    if-nez v5, :cond_4

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "actionProcessing null, may be something wrong"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v6, 0x5

    invoke-interface {v3, v6}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v3

    const/16 v6, 0xa6

    if-eq v3, v6, :cond_13

    const/16 v6, 0xb0

    if-eq v3, v6, :cond_12

    const/16 v6, 0xb8

    if-eq v3, v6, :cond_14

    const/16 v6, 0xbb

    const-wide/16 v7, -0x1

    const v9, 0x7f1209c8

    const/16 v10, 0x8

    if-eq v3, v6, :cond_11

    const/16 v6, 0xac

    const/4 v11, 0x2

    if-eq v3, v6, :cond_d

    const/16 p0, 0xad

    if-eq v3, p0, :cond_7

    if-eqz v0, :cond_6

    invoke-interface {v0, v11}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    :cond_6
    invoke-interface {v5, p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPostAction(I)V

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0, v11, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(IZ)V

    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigESPDisplay(Z)V

    :cond_9
    invoke-interface {v5, p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPostAction(I)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0O00O;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o0O00O;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o00OOO0O;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o00OOO0O;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    sget-boolean p0, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooO0OO:Z

    if-eqz p0, :cond_b

    const v9, 0x7f120625

    :cond_b
    invoke-interface {v0, v10, v9, v7, v8}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateTipImage()V

    goto :goto_1

    :cond_d
    if-eqz v0, :cond_e

    invoke-interface {v0, v11}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    :cond_e
    if-eqz v2, :cond_f

    invoke-interface {v2, v1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reConfigESPDisplay(Z)V

    :cond_f
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAlgo3840AndMotionDetection(I)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/android/camera/CameraSettings;->getBackSlowMotionUIState()Z

    move-result p0

    if-nez p0, :cond_14

    :cond_10
    invoke-interface {v5, p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPostAction(I)V

    goto :goto_1

    :cond_11
    invoke-interface {v5, p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPostAction(I)V

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    invoke-interface {v0, v10, v9, v7, v8}, Lcom/android/camera/protocol/protocols/TopAlert;->alertAiDetectTipHint(IIJ)V

    goto :goto_1

    :cond_12
    invoke-interface {v5}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    invoke-interface {v5, v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->updateLoading(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->impl2()Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->resetShootUI()V

    goto :goto_1

    :cond_13
    invoke-interface {v5}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingFinish()V

    invoke-interface {v5, v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->updateLoading(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl2()Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->resetShootUI()V

    :cond_14
    :goto_1
    return-void
.end method

.method public onPrepare(Lcom/android/camera/module/Module;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RecordingState"

    const-string/jumbo v3, "onPrepare: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->needHideSmartShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->mSuspendShutterStateListener:Lcom/android/camera/ui/SuspendShutterListener;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/android/camera/ui/SuspendShutterListener;->setSuspendShutterVisibility(I)V

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    instance-of v3, p1, Lcom/android/camera/module/Camera2Module;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/android/camera/module/Camera2Module;

    iget-object v3, v3, Lcom/android/camera/module/Camera2Module;->mMultiCap:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean v3, v3, Lcom/android/camera/module/image/MultiCaptureManager;->mPendingMultiCapture:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    invoke-interface {v4, v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    :cond_2
    if-nez p1, :cond_3

    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "module is null"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p1

    const/16 v4, 0xdb

    const/16 v5, 0xd9

    const/16 v6, 0xd4

    const/16 v7, 0xbb

    const/16 v8, 0xb3

    if-eq p1, v8, :cond_a

    if-eq p1, v7, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromTimerBurstShutter()V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromShutter()V

    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPrepare()V

    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/VlogProProcess;->impl2()Lcom/android/camera/protocol/protocols/VlogProProcess;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/VlogProProcess;->processingPrepare()V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->processingPrepare()V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->processingPrepare()V

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingPrepare()V

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingPrepare()V

    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/TopAlert;->hideExtraMenu()V

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    :cond_c
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result v9

    const/16 v10, 0xa0

    if-eq v9, v10, :cond_1b

    const/16 v2, 0xa3

    if-eq v9, v2, :cond_17

    const/16 v2, 0xa6

    if-eq v9, v2, :cond_16

    const/16 v2, 0xad

    if-eq v9, v2, :cond_15

    const/16 v2, 0xb0

    if-eq v9, v2, :cond_13

    if-eq v9, v7, :cond_12

    if-eq v9, v6, :cond_11

    const/16 v2, 0xd7

    if-eq v9, v2, :cond_10

    if-eq v9, v5, :cond_10

    if-eq v9, v4, :cond_1c

    if-eq v9, v8, :cond_1c

    const/16 v2, 0xb4

    if-eq v9, v2, :cond_e

    const/16 v2, 0xb7

    if-eq v9, v2, :cond_10

    const/16 v2, 0xb8

    if-eq v9, v2, :cond_d

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isAlgoFPS(I)Z

    move-result p0

    if-nez p0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_4

    :cond_d
    if-eqz p1, :cond_10

    const/16 p0, 0x202

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSlideSwitchLayout(ZI)V

    goto :goto_3

    :cond_e
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->impl2()Lcom/android/camera/protocol/protocols/ManuallyAdjust;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/ManuallyAdjust;->onRecordingPrepare()V

    :cond_f
    if-eqz p1, :cond_1c

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_4

    :cond_10
    :goto_3
    if-eqz p1, :cond_1c

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_4

    :cond_11
    if-eqz p1, :cond_1c

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto/16 :goto_4

    :cond_12
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->impl2()Lcom/android/camera/protocol/protocols/AmbilightSelector;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/AmbilightSelector;->onRecordingPrepare()V

    goto :goto_4

    :cond_13
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-interface {p0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearIndicator(I)V

    :cond_14
    invoke-static {}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->impl2()Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->setShootingUI()V

    goto :goto_4

    :cond_15
    if-eqz p1, :cond_1c

    invoke-interface {p1, v1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(IZ)V

    goto :goto_4

    :cond_16
    invoke-static {}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->impl2()Lcom/android/camera/protocol/protocols/PanoramaProtocol;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PanoramaProtocol;->setShootUI()V

    goto :goto_4

    :cond_17
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->dismiss(I)V

    :cond_18
    if-nez v3, :cond_19

    if-eqz p1, :cond_19

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    :cond_19
    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    :cond_1a
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000O()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isOCREnabled()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->getInstance()Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/xiaomi/ocr/sdk_ocr/OCREngineWrapper;->suppressRegionDetection(I)V

    goto :goto_4

    :cond_1b
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "onPrepare mode not ready"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    :goto_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTips(Z)V

    :cond_1d
    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RecordingState"

    const-string/jumbo v3, "onResume"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/16 v3, 0xb3

    const/4 v4, 0x1

    if-eq p0, v3, :cond_7

    const/16 v3, 0xb7

    const/4 v5, 0x4

    if-eq p0, v3, :cond_5

    const/16 v3, 0xbb

    if-eq p0, v3, :cond_4

    const/16 v3, 0xcc

    if-eq p0, v3, :cond_3

    const/16 v3, 0xd7

    if-eq p0, v3, :cond_5

    const/16 v0, 0xd9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xdb

    if-eq p0, v0, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingResume()V

    invoke-interface {v2, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v2, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/VlogProProcess;->impl2()Lcom/android/camera/protocol/protocols/VlogProProcess;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/VlogProProcess;->processingResume()V

    goto :goto_0

    :cond_2
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->processingResume()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingResume()V

    invoke-interface {v2, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    invoke-interface {v2, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    goto :goto_0

    :cond_4
    invoke-interface {v1, v4, v4}, Lcom/android/camera/protocol/protocols/ActionProcessing;->enableStopButton(ZZ)V

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingResume()V

    invoke-interface {v2, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->setRecordingTimeState(I)V

    invoke-interface {v2, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromShutter()V

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTipImage(Z)V

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->hideAllTips(Z)V

    goto :goto_0

    :cond_7
    invoke-interface {v2, v4}, Lcom/android/camera/protocol/protocols/TopAlert;->hideConfigMenu(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingResume()V

    :cond_8
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RecordingState"

    const-string/jumbo v3, "onStart"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v3

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4, v5}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->setESPRecordingTimeState(I)V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v4

    const/16 v6, 0x8

    invoke-direct {p0, v4, v6}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->updateRightTips(Lcom/android/camera/protocol/protocols/TopAlert;I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->hideHint()V

    if-eqz v3, :cond_1

    invoke-interface {v3, v6, v0}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->getCurrentModuleIndex()I

    move-result p0

    const/4 v3, 0x7

    sparse-switch p0, :sswitch_data_0

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    goto/16 :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/VlogProProcess;->impl2()Lcom/android/camera/protocol/protocols/VlogProProcess;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/VlogProProcess;->processingStart()V

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmTimeBackflowProcess;->processingStart()V

    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    goto/16 :goto_0

    :sswitch_2
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    invoke-interface {v4, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMusicClose(Z)V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->impl2()Lcom/android/camera/protocol/protocols/FilmDreamProcess;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FilmDreamProcess;->processingStart()V

    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/camera/protocol/protocols/AmbilightProtocol;->impl2()Lcom/android/camera/protocol/protocols/AmbilightProtocol;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/camera/protocol/protocols/CloneProcess;->impl2()Lcom/android/camera/protocol/protocols/CloneProcess;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/CloneProcess;->processingStart()V

    goto :goto_0

    :sswitch_6
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    invoke-interface {v4, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertMusicClose(Z)V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVProcess;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/live/LiveVVProcess;->processingStart()V

    goto :goto_0

    :sswitch_8
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->impl2()Lcom/android/camera/protocol/protocols/WideSelfieProtocol;

    move-result-object p0

    if-eqz p0, :cond_3

    const v0, 0x7f120ab8

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/WideSelfieProtocol;->updateHintText(I)V

    goto :goto_0

    :sswitch_9
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object p0

    if-eqz v4, :cond_3

    const/16 v1, 0xac

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedStringIdIgnoreClose(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, v6, p0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertVideoUltraClear(ILjava/lang/String;)V

    invoke-interface {v4, v0}, Lcom/android/camera/protocol/protocols/TopAlert;->alertESPFeatureTip(Z)V

    goto :goto_0

    :sswitch_a
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    if-eqz v2, :cond_3

    invoke-interface {v2, v3}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->clearFocusView(I)V

    goto :goto_0

    :sswitch_b
    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/ActionProcessing;->processingStart()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v5, v0, v1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->updateNightTip(IZLjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa3 -> :sswitch_b
        0xa9 -> :sswitch_a
        0xac -> :sswitch_9
        0xb0 -> :sswitch_8
        0xb3 -> :sswitch_7
        0xb7 -> :sswitch_6
        0xb9 -> :sswitch_5
        0xbb -> :sswitch_4
        0xd0 -> :sswitch_a
        0xd4 -> :sswitch_3
        0xd7 -> :sswitch_2
        0xd9 -> :sswitch_1
        0xdb -> :sswitch_0
    .end sparse-switch
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/RecordState;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/RecordState;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateZoomRatioToggleButtonState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isRecordingOrPausing"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/DualController;->setRecordingOrPausing(Z)V

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->hideZoomButton()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    :cond_3
    :goto_1
    return-void
.end method

.class public Lcom/android/camera/features/mode/pixel/PixelModeUI;
.super Lcom/android/camera/fragment/modeui/BaseModeUI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getAi108ContentDescriptString()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAI108M"
        type = 0x0
    .end annotation

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->Oooo0O0()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    const v0, 0x7f1200d6

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f120a29

    invoke-static {v4}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    const v0, 0x7f1200d7

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    goto :goto_0

    :cond_0
    new-array p0, v0, [Ljava/lang/String;

    const v0, 0x7f120a26

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f120a28

    invoke-static {v4}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    const v0, 0x7f120a27

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/android/camera/Util;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p0, p0, v2

    goto :goto_1

    :cond_1
    aget-object p0, p0, v1

    :goto_1
    return-object p0
.end method

.method private getAi108ItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAI108M"
        type = 0x0
    .end annotation

    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO0O0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO0O0;-><init>(Lcom/android/camera/features/mode/pixel/PixelModeUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO0OO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO0OO;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method private getAiUltraPixelPhotographyDrawables()[I
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAI108M"
        type = 0x0
    .end annotation

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->Oooo0O0()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    new-array p0, v0, [I

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    new-array p0, v0, [I

    fill-array-data p0, :array_1

    return-object p0

    :array_0
    .array-data 4
        0x7f0805d0
        0x7f0805d2
    .end array-data

    :array_1
    .array-data 4
        0x7f0805cd
        0x7f0805cf
    .end array-data
.end method

.method private getUltraPixelItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPixelModeCustomSize"
        type = 0x2
    .end annotation

    new-instance p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    invoke-direct {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;-><init>()V

    const/16 v0, 0xd1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO0o;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO0o;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO00o;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO00o;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getAi108ItemBuilder$3(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "newMode"
        }
    .end annotation

    new-instance p1, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAiUltraPixelPhotographyDrawables()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAiUltraPixelPhotographyDrawables()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getAi108Running()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108ContentDescriptString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getAi108ItemBuilder$4(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0xab

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$getUltraPixelItemBuilder$0(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "newMode"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x7f120a35

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const v3, 0x7f1200d7

    invoke-virtual {p0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const v2, 0x7f1200d6

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getXXXMRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    new-instance v2, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    invoke-direct {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v2

    const v3, 0x7f0805d6

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v2

    const v3, 0x7f0805d8

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p0

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getUltraPixelItemBuilder$2(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOO/OooO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$null$1(Lcom/android/camera/protocol/protocols/ConfigChanges;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "configChanges"
        }
    .end annotation

    const/16 v0, 0xfe

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->lambda$getAi108ItemBuilder$3(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p0

    return-object p0
.end method

.method public getExtraTopConfigItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getTimerExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSettingExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportSpeechShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSpeechShutterExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getReferenceLineExtraItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigUtils;->getSupportedReferenceConfig()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getModuleId()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/16 p0, 0xaf

    return p0
.end method

.method public getTopConfigItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/camera/fragment/modeui/BaseModeUI;->getTopConfigItems()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOOO()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getAi108ItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPixelModeCustomSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/features/mode/pixel/PixelModeUI;->getUltraPixelItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->supportTopFilterEntry()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getShineItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getmComponentRunningESPDisplay()Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupportTopMenu()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getEspDisplayItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigUtils;->getMoreItemBuilder()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.class public Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;
.super Lcom/android/camera/data/data/ComponentData;


# static fields
.field private static final SUPPORT_NONE:I = 0x0

.field private static final SUPPORT_TIPSHOW:I = 0x1

.field private static final SUPPORT_TOPMENU:I = 0x2

.field private static final VALUE_OFF:Ljava/lang/String; = "OFF"

.field private static final VALUE_ON:Ljava/lang/String; = "ON"


# instance fields
.field private mSupporteType:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataItemBase"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMode"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_esp"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ON"

    return-object p0

    :cond_0
    const-string p0, "OFF"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string/jumbo p0, "pref_camera_e_s_p_key"

    return-object p0
.end method

.method public isSupportTipShow()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->mSupporteType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportTopMenu()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->mSupporteType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupported()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->mSupporteType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSwitchOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public reInit(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "cameraId",
            "isNormalIntent"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->mSupporteType:I

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p3

    invoke-virtual {p3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayFoldState()Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplaySelfieState()Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    const/16 p2, 0xba

    if-eq p1, p2, :cond_6

    const/16 p2, 0xb9

    if-eq p1, p2, :cond_6

    const/16 p2, 0xb6

    if-eq p1, p2, :cond_6

    const/16 p2, 0xb3

    if-eq p1, p2, :cond_6

    const/16 p2, 0xd1

    if-eq p1, p2, :cond_6

    const/16 p2, 0xa6

    if-eq p1, p2, :cond_6

    const/16 p2, 0xd3

    if-eq p1, p2, :cond_6

    const/16 p2, 0xbc

    if-eq p1, p2, :cond_6

    const/16 p2, 0xd2

    if-eq p1, p2, :cond_6

    const/16 p2, 0xb0

    if-eq p1, p2, :cond_6

    const/16 p2, 0xbb

    if-eq p1, p2, :cond_6

    const/16 p2, 0xbd

    if-eq p1, p2, :cond_6

    const/16 p2, 0xd5

    if-eq p1, p2, :cond_6

    const/16 p2, 0xcf

    if-eq p1, p2, :cond_6

    const/16 p2, 0xd9

    if-eq p1, p2, :cond_6

    const/16 p2, 0xd4

    if-eq p1, p2, :cond_6

    const/16 p2, 0xd0

    if-ne p1, p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->mSupporteType:I

    :cond_6
    :goto_0
    return-void

    :cond_7
    invoke-static {}, Lcom/android/camera/display/Display;->isNormalMuiltDisplayType()Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0xa3

    if-eq p2, p1, :cond_8

    const/16 p2, 0xa7

    if-eq p2, p1, :cond_8

    const/16 p2, 0xb4

    if-eq p2, p1, :cond_8

    const/16 p2, 0xa2

    if-eq p2, p1, :cond_8

    const/16 p2, 0xab

    if-eq p2, p1, :cond_8

    const/16 p2, 0xad

    if-eq p2, p1, :cond_8

    const/16 p2, 0xd6

    if-eq p2, p1, :cond_8

    const/16 p2, 0xaf

    if-eq p2, p1, :cond_8

    const/16 p2, 0xac

    if-eq p2, p1, :cond_8

    const/16 p2, 0xa9

    if-ne p2, p1, :cond_9

    :cond_8
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->mSupporteType:I

    :cond_9
    return-void
.end method

.method public reset()V
    .locals 2

    const/16 v0, 0xa0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningESPDisplay;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "ON"

    goto :goto_0

    :cond_0
    const-string p1, "OFF"

    :goto_0
    const/16 v0, 0xa0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

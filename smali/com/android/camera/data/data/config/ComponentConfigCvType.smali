.class public Lcom/android/camera/data/data/config/ComponentConfigCvType;
.super Lcom/android/camera/data/data/ComponentData;


# static fields
.field public static final TYPE_CV_DEFAULT:Ljava/lang/String; = "0"

.field public static final TYPE_CV_OTHER:Ljava/lang/String; = "1"


# instance fields
.field private isTelex:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataItemConfig"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigCvType;->isTelex:Z

    return-void
.end method

.method private getCurrentData()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    const/16 v0, 0xfd

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigCvType;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigCvType;->isTelex:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p0, "0"

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const-string p0, "0"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f120355

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

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

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

    const-string/jumbo p0, "pref_camera_cv_type_key"

    return-object p0
.end method

.method public getSelectedDrawableId()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigCvType;->getCurrentData()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSelectedShadowDrawableId()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigCvType;->getCurrentData()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSelectedStringId()I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigCvType;->getCurrentData()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public reInit(IIILcom/android/camera2/CameraCapabilities;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "cameraId",
            "intentType",
            "p"
        }
    .end annotation

    invoke-static {p4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isTeleX(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/camera/data/data/config/ComponentConfigCvType;->isTelex:Z

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    const/16 p2, 0xa3

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa7

    if-eq p1, p2, :cond_0

    const/16 p2, 0xad

    if-eq p1, p2, :cond_0

    const/16 p2, 0xab

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getCvTypeComponentDataItems(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "newValue"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

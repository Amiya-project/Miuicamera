.class public Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentDescriptString:Ljava/lang/String;

.field private isActivated:Z

.field private isColoring:Z

.field private mContentDescriptionStringId:I

.field private needExpand:Z

.field private newBackgroundResourceId:I

.field private newImageResourceId:I

.field private topSelectedAnimID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isColoring:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 11

    new-instance v10, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    iget v1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->newImageResourceId:I

    iget v2, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->newBackgroundResourceId:I

    iget v3, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->topSelectedAnimID:I

    iget v4, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->mContentDescriptionStringId:I

    iget-object v5, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->contentDescriptString:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isActivated:Z

    iget-boolean v7, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isColoring:Z

    iget-boolean v8, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->needExpand:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;-><init>(IIIILjava/lang/String;ZZZLcom/android/camera/fragment/modeui/topconfig/TopItemResource$1;)V

    return-object v10
.end method

.method public setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isActivated"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isActivated:Z

    return-object p0
.end method

.method public setColoring(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isColoring"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isColoring:Z

    return-object p0
.end method

.method public setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDescriptString"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->contentDescriptString:Ljava/lang/String;

    return-object p0
.end method

.method public setNeedExpand(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needExpand"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->needExpand:Z

    return-object p0
.end method

.method public setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBackgroundResourceId"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigBgRes(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->newBackgroundResourceId:I

    return-object p0
.end method

.method public setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newImageResourceId"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigRes(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->newImageResourceId:I

    return-object p0
.end method

.method public setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topSelectedAnimID"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->topSelectedAnimID:I

    :cond_0
    return-object p0
.end method

.method public setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContentDescriptionStringId"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->mContentDescriptionStringId:I

    return-object p0
.end method

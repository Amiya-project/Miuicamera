.class public Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;,
        Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;,
        Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    }
.end annotation


# instance fields
.field private configItem:I

.field private enable:Z

.field private gravity:I

.field private index:I

.field private mExtraResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

.field private mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private subTopConfigItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->enable:Z

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$000(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->configItem:I

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$100(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->gravity:I

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$200(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$300(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mExtraResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$400(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$500(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->subTopConfigItems:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;-><init>(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)V

    return-void
.end method


# virtual methods
.method public getConfigItem()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->configItem:I

    return p0
.end method

.method public getExtraResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mExtraResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    return-object p0
.end method

.method public getGravity()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->gravity:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->index:I

    return p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    return-object p0
.end method

.method public getSubTopConfigItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->subTopConfigItems:Ljava/util/List;

    return-object p0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->enable:Z

    return p0
.end method

.method public setConfigItem(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configItem"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->configItem:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->enable:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravity"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->gravity:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->index:I

    return-void
.end method

.method public setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mResourceUpdater"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    return-void
.end method

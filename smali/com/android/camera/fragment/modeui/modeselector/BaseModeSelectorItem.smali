.class public Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;
    }
.end annotation


# instance fields
.field private isCommon:Z

.field private mDataItem:Lcom/android/camera/data/data/ComponentDataItem;

.field private mPriority:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;)V
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

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->access$000(Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->mDataItem:Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->access$100(Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->isCommon:Z

    return-void
.end method


# virtual methods
.method public getDataItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->mDataItem:Lcom/android/camera/data/data/ComponentDataItem;

    return-object p0
.end method

.method public isCommon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->isCommon:Z

    return p0
.end method

.method public setCommon(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "common"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->isCommon:Z

    return-void
.end method

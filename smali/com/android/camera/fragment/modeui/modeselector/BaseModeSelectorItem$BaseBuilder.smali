.class public Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isCommon:Z

.field private mDataItem:Lcom/android/camera/data/data/ComponentDataItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->mDataItem:Lcom/android/camera/data/data/ComponentDataItem;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->isCommon:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;-><init>(Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;)V

    return-object v0
.end method

.method public setCommon(Z)Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "common"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->isCommon:Z

    return-object p0
.end method

.method public setDataItem(Lcom/android/camera/data/data/ComponentDataItem;)Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->mDataItem:Lcom/android/camera/data/data/ComponentDataItem;

    return-object p0
.end method

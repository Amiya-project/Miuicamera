.class public Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;
.super Lcom/xiaomi/mimoji/common/bean/MimojiItem;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private filterName:Ljava/lang/String;

.field private filterResourceId:I

.field private filterType:I

.field private isSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mimoji/common/bean/MimojiItem;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filterType",
            "filterName",
            "filterResourceId"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/mimoji/common/bean/MimojiItem;-><init>()V

    iput p1, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->filterType:I

    iput-object p2, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->filterName:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->filterResourceId:I

    return-void
.end method


# virtual methods
.method public getFilterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->filterName:Ljava/lang/String;

    return-object p0
.end method

.method public getFilterResourceId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->filterResourceId:I

    return p0
.end method

.method public getFilterType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->filterType:I

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->isSelected:Z

    return p0
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterName"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->filterName:Ljava/lang/String;

    return-void
.end method

.method public setFilterResourceId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterResourceId"
        }
    .end annotation

    iput p1, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->filterResourceId:I

    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterType"
        }
    .end annotation

    iput p1, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->filterType:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSelected"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/xiaomi/mimoji/common/bean/MimojiFilterItem;->isSelected:Z

    return-void
.end method

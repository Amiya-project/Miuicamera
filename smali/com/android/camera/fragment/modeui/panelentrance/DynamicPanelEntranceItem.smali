.class public final Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;,
        Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$Gravity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOC_MODE:I = 0x20

.field public static final ID_CARD:I = 0x21

.field public static final INFINITE:J = -0x1L

.field public static final LEFT:I = 0x1

.field public static final NEAR_RANGE:I = 0x24

.field public static final OCR_ENTRY:I = 0x23

.field public static final QR_ENTRY:I = 0x22

.field public static final RIGHT:I = 0x2


# instance fields
.field private mDelayHide:J

.field private mDuration:J

.field public mGravity:I

.field private mPriority:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)V

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->access$000(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mGravity:I

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->access$100(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mDelayHide:J

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->access$200(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mDuration:J

    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->access$300(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->getPriority()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->getPriority()I

    move-result p1

    if-ge p0, p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->compareTo(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    iget p1, p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getDelayHide()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mDelayHide:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mDuration:J

    return-wide v0
.end method

.method public getGravity()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mGravity:I

    return p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

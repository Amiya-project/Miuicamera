.class public Lcom/android/camera/ChangeManager;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_CHANGE_LAYOUT_MODE:I = 0x7

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_NORMAL:I = 0x1

.field public static final TYPE_RESTORED:I = 0x3


# instance fields
.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget p0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clear(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method

.method public clearAll()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method

.method public request(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ChangeManager;->mStatus:I

    return-void
.end method

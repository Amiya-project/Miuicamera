.class public LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO00o/OooO00o/OooOOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o00Oo0"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final OooO0OO:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;->OooO0OO:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;->hashCode()I

    move-result v1

    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;->OooO0OO:Landroid/graphics/ColorFilter;

    iget-object p1, p1, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;->OooO0OO:Landroid/graphics/ColorFilter;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;->OooO00o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x20f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    :goto_0
    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOOO0$o00Oo0;->OooO0O0:Ljava/lang/String;

    if-eqz p0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/2addr v1, p0

    :cond_1
    return v1
.end method

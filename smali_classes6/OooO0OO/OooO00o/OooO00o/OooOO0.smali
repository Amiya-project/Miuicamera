.class public LOooO0OO/OooO00o/OooO00o/OooOO0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0OO/OooO00o/OooO00o/OooOO0$OooO0O0;
    }
.end annotation


# instance fields
.field private OooO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO00o:LOooO0OO/OooO00o/OooO00o/o00O0O;

.field private final OooO0O0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;",
            ">;>;"
        }
    .end annotation
.end field

.field private OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0OO/OooO00o/OooO00o/OooOOO;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOO0;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0OO;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0oO:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0oo:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field private OooOO0:Landroid/graphics/Rect;

.field private OooOO0O:F

.field private OooOO0o:F

.field private OooOOO:Z

.field private OooOOO0:F

.field private OooOOOO:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LOooO0OO/OooO00o/OooO00o/o00O0O;

    invoke-direct {v0}, LOooO0OO/OooO00o/OooO00o/o00O0O;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o00O0O;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0O0:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOOO:I

    return-void
.end method


# virtual methods
.method public OooO()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0OO/OooO00o/OooO00o/OooOOO;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0Oo:Ljava/util/Map;

    return-object p0
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooO0o;->OooO0o0(Ljava/lang/String;)V

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0O0:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOO0:Landroid/graphics/Rect;

    return-object p0
.end method

.method public OooO0OO()Landroidx/collection/SparseArrayCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0o;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0oO:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method public OooO0Oo()F
    .locals 2

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o0()F

    move-result v0

    iget p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOO0:F

    div-float/2addr v0, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    long-to-float p0, v0

    return p0
.end method

.method public OooO0o()F
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOO0o:F

    return p0
.end method

.method public OooO0o0()F
    .locals 1

    iget v0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOO0o:F

    iget p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOO0O:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public OooO0oO()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0OO;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o0:Ljava/util/Map;

    return-object p0
.end method

.method public OooO0oo()F
    .locals 0

    iget p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOO0:F

    return p0
.end method

.method public OooOO0()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO:Ljava/util/List;

    return-object p0
.end method

.method public OooOO0O(Ljava/lang/String;)LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOO0;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOO0;

    invoke-virtual {v1, p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOO0;->OooO00o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public OooOO0o()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOO0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o:Ljava/util/List;

    return-object p0
.end method

.method public OooOOO()LOooO0OO/OooO00o/OooO00o/o00O0O;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o00O0O;

    return-object p0
.end method

.method public OooOOO0()I
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOOO:I

    return p0
.end method

.method public OooOOOO(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0OO:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public OooOOOo()F
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOO0O:F

    return p0
.end method

.method public OooOOo()Z
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOO:Z

    return p0
.end method

.method public OooOOo0()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0O0:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public OooOOoo()Z
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0Oo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public OooOo(Z)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO00o:LOooO0OO/OooO00o/OooO00o/o00O0O;

    invoke-virtual {p0, p1}, LOooO0OO/OooO00o/OooO00o/o00O0O;->OooO0oO(Z)V

    return-void
.end method

.method public OooOo0(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0OO/OooO00o/OooO00o/OooOOO;",
            ">;",
            "Landroidx/collection/SparseArrayCompat<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0o;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO0OO;",
            ">;",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOO0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOO0:Landroid/graphics/Rect;

    iput p2, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOO0O:F

    iput p3, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOO0o:F

    iput p4, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOO0:F

    iput-object p5, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO:Ljava/util/List;

    iput-object p6, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0oo:Landroidx/collection/LongSparseArray;

    iput-object p7, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0OO:Ljava/util/Map;

    iput-object p8, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0Oo:Ljava/util/Map;

    iput-object p9, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0oO:Landroidx/collection/SparseArrayCompat;

    iput-object p10, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o0:Ljava/util/Map;

    iput-object p11, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0o:Ljava/util/List;

    return-void
.end method

.method public OooOo00(I)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOOO:I

    add-int/2addr v0, p1

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOOO:I

    return-void
.end method

.method public OooOo0O(J)LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO0oo:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;

    return-object p0
.end method

.method public OooOo0o(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-boolean p1, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooOOO:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/OooOO0;->OooO:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO0o;->OooOo0o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

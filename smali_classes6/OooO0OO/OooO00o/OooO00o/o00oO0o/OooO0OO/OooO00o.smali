.class public abstract LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO;,
        LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooOO0;,
        LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0OO;,
        LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;,
        LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0O0:Z

.field private final OooO0OO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o<",
            "TK;>;"
        }
    .end annotation
.end field

.field private OooO0Oo:F

.field private OooO0o:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public OooO0o0:LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO<",
            "TA;>;"
        }
    .end annotation
.end field

.field private OooO0oO:F

.field private OooO0oo:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o<",
            "TK;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0O0:Z

    const/4 v0, 0x0

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0Oo:F

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0o:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oO:F

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo:F

    invoke-static {p1}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooOOO(Ljava/util/List;)LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;

    return-void
.end method

.method private OooO0oO()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oO:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;

    invoke-interface {v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;->OooO0O0()F

    move-result v0

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oO:F

    :cond_0
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oO:F

    return p0
.end method

.method private static OooOOO(Ljava/util/List;)LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o<",
            "TT;>;>;)",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0OO;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0OO;-><init>(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO00o;)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooOO0;

    invoke-direct {v0, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooOO0;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    new-instance v0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO;

    invoke-direct {v0, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract OooO(LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public OooO00o(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0()LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o<",
            "TK;>;"
        }
    .end annotation

    const-string v0, "BaseKeyframeAnimation#getCurrentKeyframe"

    invoke-static {v0}, LOooO0OO/OooO00o/OooO00o/OooO;->OooO00o(Ljava/lang/String;)V

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;

    invoke-interface {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;->OooO00o()LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;

    move-result-object p0

    invoke-static {v0}, LOooO0OO/OooO00o/OooO00o/OooO;->OooO0O0(Ljava/lang/String;)F

    return-object p0
.end method

.method public OooO0OO()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;

    invoke-interface {v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;->OooO0o0()F

    move-result v0

    iput v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo:F

    :cond_0
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo:F

    return p0
.end method

.method public OooO0Oo()F
    .locals 2

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0O0()LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, v0, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0o0()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public OooO0o()F
    .locals 0

    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0Oo:F

    return p0
.end method

.method public OooO0o0()F
    .locals 3

    iget-boolean v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0O0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0O0()LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0oo()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0Oo:F

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o0()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0O0()F

    move-result v1

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;->OooO0o0()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0
.end method

.method public OooO0oo()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0Oo()F

    move-result v0

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0o0:LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;

    if-nez v1, :cond_0

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;

    invoke-interface {v1, v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;->OooO0OO(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0o:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0O0()LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO(LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooO00o;F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0o:Ljava/lang/Object;

    return-object v0
.end method

.method public OooOO0()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO00o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;

    invoke-interface {v1}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;->OooO0Oo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooOO0O()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0O0:Z

    return-void
.end method

.method public OooOO0o(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;

    invoke-interface {v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oO()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-direct {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oO()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0OO()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0OO()F

    move-result p1

    :cond_2
    :goto_0
    iget v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0Oo:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0Oo:F

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0OO:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;

    invoke-interface {v0, p1}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0o;->OooO0Oo(F)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooOO0()V

    :cond_4
    return-void
.end method

.method public OooOOO0(LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;)V
    .locals 2
    .param p1    # LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO<",
            "TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0o0:LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO0OO(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;)V

    :cond_0
    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0o0:LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;->OooO0OO(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;)V

    :cond_1
    return-void
.end method

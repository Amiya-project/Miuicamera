.class public LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO;
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/Oooo0;
.implements LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;
.implements LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOO0;


# instance fields
.field private final OooO:LOooO0OO/OooO00o/OooO00o/OooOOO0;

.field private OooO00o:Landroid/graphics/Paint;

.field private OooO0O0:Landroid/graphics/RectF;

.field private final OooO0OO:Landroid/graphics/Matrix;

.field private final OooO0Oo:Landroid/graphics/Path;

.field private final OooO0o:Ljava/lang/String;

.field private final OooO0o0:Landroid/graphics/RectF;

.field private final OooO0oO:Z

.field private final OooO0oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;",
            ">;"
        }
    .end annotation
.end field

.field private OooOO0:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/Oooo0;",
            ">;"
        }
    .end annotation
.end field

.field private OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000;)V
    .locals 7

    invoke-virtual {p3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000;->OooO0OO()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000;->OooO0Oo()Z

    move-result v4

    invoke-virtual {p3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000;->OooO0O0()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0O0(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000;->OooO0O0()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo(Ljava/util/List;)LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;-><init>(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;Ljava/lang/String;ZLjava/util/List;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;)V

    return-void
.end method

.method public constructor <init>(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;Ljava/lang/String;ZLjava/util/List;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;)V
    .locals 1
    .param p6    # LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/OooOOO0;",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;",
            ">;",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO00o;

    invoke-direct {v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO00o;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0O0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0Oo:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0o0:Landroid/graphics/RectF;

    iput-object p3, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0o:Ljava/lang/String;

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO:LOooO0OO/OooO00o/OooO00o/OooOOO0;

    iput-boolean p4, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oO:Z

    iput-object p5, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;->OooO0O0()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    invoke-virtual {p1, p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO00o(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;)V

    iget-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    invoke-virtual {p1, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0O0(LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o$OooO0O0;)V

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;

    instance-of p3, p2, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooOOOO;

    if-eqz p3, :cond_1

    check-cast p2, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooOOOO;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_3

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooOOOO;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    invoke-interface {p5, p3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p3

    invoke-interface {p2, p3}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooOOOO;->OooO0O0(Ljava/util/ListIterator;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static OooO0O0(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/OooOOO0;",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00O0O;",
            ">;)",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00O0O;

    invoke-interface {v2, p0, p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00O0O;->OooO00o(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;)LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static OooO0oo(Ljava/util/List;)LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00O0O;",
            ">;)",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00O0O;

    instance-of v2, v1, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;

    if-eqz v2, :cond_0

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOo;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private OooOO0O()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public OooO()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/Oooo0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;

    instance-of v2, v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/Oooo0;

    if-eqz v2, :cond_0

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0:Ljava/util/List;

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/Oooo0;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0:Ljava/util/List;

    return-object p0
.end method

.method public OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    if-eqz p2, :cond_0

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0o()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    iget-object p2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0o0:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;

    instance-of v1, v0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO;

    if-eqz v1, :cond_1

    check-cast v0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO;

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0o0:Landroid/graphics/RectF;

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-interface {v0, v1, v2, p3}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0o0:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public OooO0OO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    iget-boolean v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oO:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    if-eqz p2, :cond_2

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0o()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0oo()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x64

    goto :goto_0

    :cond_1
    iget-object p2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0oo()LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/OooO00o;->OooO0oo()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    mul-float/2addr p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    mul-float/2addr p2, p3

    float-to-int p3, p2

    :cond_2
    iget-object p2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO:LOooO0OO/OooO00o/OooO00o/OooOOO0;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/OooOOO0;->Oooo0o0()Z

    move-result p2

    const/16 v0, 0xff

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-direct {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eq p3, v0, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0O0:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0O0:Landroid/graphics/RectF;

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v3, v1}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO00o(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0O0:Landroid/graphics/RectF;

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO00o:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOOO0;->OooOOO(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    if-eqz p2, :cond_5

    move p3, v0

    :cond_5
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_7

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO;

    if-eqz v2, :cond_6

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO;

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-interface {v1, p1, v2, p3}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO;->OooO0OO(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public OooO0Oo()V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO:LOooO0OO/OooO00o/OooO00o/OooOOO0;

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/OooOOO0;->invalidateSelf()V

    return-void
.end method

.method public OooO0o(Ljava/lang/Object;LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;)V
    .locals 0
    .param p2    # LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0OO(Ljava/lang/Object;LOooO0OO/OooO00o/OooO00o/o0Oo0oo/OooOOOO;)Z

    :cond_0
    return-void
.end method

.method public OooO0o0(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;",
            ">;",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p2, v1}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;->OooO0o0(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooO0oO(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;ILjava/util/List;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;",
            "I",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;",
            ">;",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;->OooO0oo(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;->OooO00o(Ljava/lang/String;)LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;

    move-result-object p4

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;->OooO0OO(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4, p0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;->OooOO0(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOO0;)LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;->OooO(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;->OooO0o0(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;

    instance-of v2, v1, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOO0;

    if-eqz v2, :cond_2

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOO0;

    invoke-interface {v1, p1, p2, p3, p4}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOO0;->OooO0oO(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;ILjava/util/List;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public OooOO0()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0o()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0o:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 4

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooOO0O:LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;

    if-eqz v0, :cond_0

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0OO/o000oOoO;->OooO0o()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0Oo:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oO:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0Oo:Landroid/graphics/Path;

    return-object p0

    :cond_1
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0oo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;

    instance-of v2, v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/Oooo0;

    if-eqz v2, :cond_2

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0Oo:Landroid/graphics/Path;

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/Oooo0;

    invoke-interface {v1}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/Oooo0;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0OO:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0o;->OooO0Oo:Landroid/graphics/Path;

    return-object p0
.end method

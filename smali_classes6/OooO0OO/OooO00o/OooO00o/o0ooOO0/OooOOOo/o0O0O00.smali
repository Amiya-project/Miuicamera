.class public LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;
.super Ljava/lang/Object;


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0O0:Landroid/graphics/PointF;

.field private OooO0OO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0:Landroid/graphics/PointF;

    iput-boolean p2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0OO:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    return-void
.end method

.method private OooO0o0(FF)V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0:Landroid/graphics/PointF;

    :cond_0
    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    return-object p0
.end method

.method public OooO0O0()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0:Landroid/graphics/PointF;

    return-object p0
.end method

.method public OooO0OO(LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;F)V
    .locals 10
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0:Landroid/graphics/PointF;

    :cond_0
    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0Oo()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0OO:Z

    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curves must have the same number of control points. Shape 1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\tShape 2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooO0o;->OooO0o0(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_4

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    new-instance v4, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;

    invoke-direct {v4}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_5

    iget-object v2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_3
    if-lt v2, v0, :cond_5

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0O0()Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4, p3}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0(FFF)F

    move-result v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, p3}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0(FFF)F

    move-result v0

    invoke-direct {p0, v3, v0}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0o0(FF)V

    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_6

    invoke-virtual {p1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;

    invoke-virtual {p2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;

    invoke-virtual {v1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO00o()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO0O0()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO0OO()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO00o()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO0O0()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v2}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO0OO()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v7, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v9, p3}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0(FFF)F

    move-result v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v5, p3}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0(FFF)F

    move-result v3

    invoke-virtual {v7, v8, v3}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO0Oo(FF)V

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v7, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v7, p3}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0(FFF)F

    move-result v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v6, p3}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0(FFF)F

    move-result v4

    invoke-virtual {v3, v5, v4}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO0o0(FF)V

    iget-object v3, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5, p3}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0(FFF)F

    move-result v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2, p3}, LOooO0OO/OooO00o/OooO00o/o0OOO0o/OooOO0O;->OooOO0(FFF)F

    move-result v1

    invoke-virtual {v3, v4, v1}, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooO00o;->OooO0o(FF)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    :cond_6
    return-void
.end method

.method public OooO0Oo()Z
    .locals 0

    iget-boolean p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0OO:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeData{numCurves="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o0O0O00;->OooO0OO:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o;
.super Ljava/lang/Object;


# static fields
.field private static final OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "x"

    const-string/jumbo v1, "y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO00o;->OooO00o([Ljava/lang/String;)LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO00o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO00o(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;F)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooO0oO()V

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOoo()LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO0O0;

    move-result-object v2

    sget-object v3, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO0O0;->o0000o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO0O0;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->Oooo00O()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOOO()V

    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private static OooO0O0(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;F)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo0O()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->Oooo00O()V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private static OooO0OO(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;F)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooO0oo()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo0O()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o;->OooO00o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO00o;

    invoke-virtual {p0, v2}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOooo(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO00o;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->Oooo000()V

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->Oooo00O()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o;->OooO0oO(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;)F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o;->OooO0oO(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOOo()V

    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static OooO0Oo(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;)I
    .locals 6
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooO0oO()V

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    :goto_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo0O()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->Oooo00O()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOOO()V

    const/16 p0, 0xff

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static OooO0o(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;F)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;",
            "F)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooO0oO()V

    :goto_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOoo()LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO0O0;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO0O0;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO0O0;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooO0oO()V

    invoke-static {p0, p1}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o;->OooO0o0(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOOO()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOOO()V

    return-object v0
.end method

.method public static OooO0o0(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;F)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o$OooO00o;->OooO00o:[I

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOoo()LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o;->OooO0OO(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown point starts with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOoo()LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO0O0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p0, p1}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o;->OooO00o(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o;->OooO0O0(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oO(LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOoo()LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO$OooO0O0;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO00o/OooO00o/o0ooOoO/oo000o$OooO00o;->OooO00o:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooO0oO()V

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo0O()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->Oooo00O()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOOO()V

    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value for token of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, LOooO0OO/OooO00o/OooO00o/o0ooOoO/o0000O/OooO0OO;->OooOo()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

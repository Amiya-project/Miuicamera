.class public final LOooO0o0/o00ooo0O/oo0o0Oo;
.super LOooO0o0/o00ooO00/o000O00;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/ranges/LongProgressionIterator;",
        "Lkotlin/collections/LongIterator;",
        "first",
        "",
        "last",
        "step",
        "(JJJ)V",
        "finalElement",
        "hasNext",
        "",
        "next",
        "getStep",
        "()J",
        "nextLong",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final o0000o:J

.field private final o0000o0o:J

.field private o0000oO0:Z

.field private o0000oOO:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 2

    invoke-direct {p0}, LOooO0o0/o00ooO00/o000O00;-><init>()V

    iput-wide p5, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000o0o:J

    iput-wide p3, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000o:J

    const-wide/16 v0, 0x0

    cmp-long p5, p5, v0

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-lez p5, :cond_0

    cmp-long p5, p1, p3

    if-gtz p5, :cond_1

    goto :goto_0

    :cond_0
    cmp-long p5, p1, p3

    if-ltz p5, :cond_1

    goto :goto_0

    :cond_1
    move p6, v0

    :goto_0
    iput-boolean p6, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000oO0:Z

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    move-wide p1, p3

    :goto_1
    iput-wide p1, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000oOO:J

    return-void
.end method


# virtual methods
.method public OooO0O0()J
    .locals 4

    iget-wide v0, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000oOO:J

    iget-wide v2, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000o:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000oO0:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000oO0:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    iget-wide v2, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000o0o:J

    add-long/2addr v2, v0

    iput-wide v2, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000oOO:J

    :goto_0
    return-wide v0
.end method

.method public final OooO0OO()J
    .locals 2

    iget-wide v0, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000o0o:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, LOooO0o0/o00ooo0O/oo0o0Oo;->o0000oO0:Z

    return p0
.end method

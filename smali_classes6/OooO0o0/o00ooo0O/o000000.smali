.class public LOooO0o0/o00ooo0O/o000000;
.super Ljava/lang/Object;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000f\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a@\u0010\u0006\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0007*\u00020\u0008\"\u0018\u0008\u0001\u0010\t*\u0008\u0012\u0004\u0012\u0002H\u00070\n*\u0008\u0012\u0004\u0012\u0002H\u00070\u000b*\u0002H\t2\u0008\u0010\u000c\u001a\u0004\u0018\u0001H\u0007H\u0087\n\u00a2\u0006\u0002\u0010\r\u001a0\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u000b\"\u000e\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u000f*\u0002H\u00072\u0006\u0010\u0010\u001a\u0002H\u0007H\u0086\u0002\u00a2\u0006\u0002\u0010\u0011\u001a\u001b\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0013H\u0087\u0002\u001a\u001b\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0012*\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0014H\u0087\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "checkStepIsPositive",
        "",
        "isPositive",
        "",
        "step",
        "",
        "contains",
        "T",
        "",
        "R",
        "",
        "Lkotlin/ranges/ClosedRange;",
        "element",
        "(Ljava/lang/Iterable;Ljava/lang/Object;)Z",
        "rangeTo",
        "",
        "that",
        "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "",
        "",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x31
    xs = "kotlin/ranges/RangesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(ZLjava/lang/Number;)V
    .locals 2
    .param p1    # Ljava/lang/Number;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param

    const-string/jumbo v0, "step"

    invoke-static {p1, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step must be positive, was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final OooO0O0(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 1
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.3"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/lang/Iterable<",
            "+TT;>;:",
            "LOooO0o0/o00ooo0O/oo000o<",
            "TT;>;>(TR;TT;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    check-cast p0, LOooO0o0/o00ooo0O/oo000o;

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, LOooO0o0/o00ooo0O/oo000o;->OooO00o(Ljava/lang/Comparable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final OooO0OO(DD)LOooO0o0/o00ooo0O/o00Ooo;
    .locals 1
    .annotation build LOooO0o0/o0O0ooO;
        version = "1.1"
    .end annotation

    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "LOooO0o0/o00ooo0O/o00Ooo<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, LOooO0o0/o00ooo0O/o00O0O;

    invoke-direct {v0, p0, p1, p2, p3}, LOooO0o0/o00ooo0O/o00O0O;-><init>(DD)V

    return-object v0
.end method

.method public static final OooO0Oo(FF)LOooO0o0/o00ooo0O/o00Ooo;
    .locals 1
    .annotation build LOooO0o0/o0O0ooO;
        version = "1.1"
    .end annotation

    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "LOooO0o0/o00ooo0O/o00Ooo<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, LOooO0o0/o00ooo0O/o00Oo0;

    invoke-direct {v0, p0, p1}, LOooO0o0/o00ooo0O/o00Oo0;-><init>(FF)V

    return-object v0
.end method

.method public static final OooO0o0(Ljava/lang/Comparable;Ljava/lang/Comparable;)LOooO0o0/o00ooo0O/oo000o;
    .locals 1
    .param p0    # Ljava/lang/Comparable;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)",
            "LOooO0o0/o00ooo0O/oo000o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "that"

    invoke-static {p1, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LOooO0o0/o00ooo0O/o00oO0o;

    invoke-direct {v0, p0, p1}, LOooO0o0/o00ooo0O/o00oO0o;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

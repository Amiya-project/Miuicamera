.class public final LOooO0o0/o00OOO0$OooO00o;
.super LOooO0o0/o00ooO00/oo0oOO0;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0017\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0008H\u0096\u0002J\u0015\u0010\t\u001a\u00020\nH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/UShortArray$Iterator;",
        "Lkotlin/collections/UShortIterator;",
        "array",
        "",
        "([S)V",
        "index",
        "",
        "hasNext",
        "",
        "nextUShort",
        "Lkotlin/UShort;",
        "nextUShort-Mh2AYeg",
        "()S",
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

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0o0/o00OOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field private o0000o:I

.field private final o0000o0o:[S
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation
.end field


# direct methods
.method public constructor <init>([S)V
    .locals 1
    .param p1    # [S
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param

    const-string v0, "array"

    invoke-static {p1, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, LOooO0o0/o00ooO00/oo0oOO0;-><init>()V

    iput-object p1, p0, LOooO0o0/o00OOO0$OooO00o;->o0000o0o:[S

    return-void
.end method


# virtual methods
.method public OooO0O0()S
    .locals 3

    iget v0, p0, LOooO0o0/o00OOO0$OooO00o;->o0000o:I

    iget-object v1, p0, LOooO0o0/o00OOO0$OooO00o;->o0000o0o:[S

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LOooO0o0/o00OOO0$OooO00o;->o0000o:I

    aget-short p0, v1, v0

    invoke-static {p0}, LOooO0o0/o00OOO00;->OooO0oo(S)S

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, LOooO0o0/o00OOO0$OooO00o;->o0000o:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, LOooO0o0/o00OOO0$OooO00o;->o0000o:I

    iget-object p0, p0, LOooO0o0/o00OOO0$OooO00o;->o0000o0o:[S

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

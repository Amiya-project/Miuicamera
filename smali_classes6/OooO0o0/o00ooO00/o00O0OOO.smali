.class public abstract LOooO0o0/o00ooO00/o00O0OOO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements LOooO0o0/o00ooOoO/o000O00O/o00O0OO/OooO00o;


# annotations
.annotation runtime LOooO0o0/OooOo00;
    level = .enum LOooO0o0/Oooo000;->o0000o:LOooO0o0/Oooo000;
    message = "This class is not going to be stabilized and is to be removed soon."
.end annotation

.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u0002H\u0086\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u0002H&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/collections/ULongIterator;",
        "",
        "Lkotlin/ULong;",
        "()V",
        "next",
        "next-s-VKNKU",
        "()J",
        "nextULong",
        "nextULong-s-VKNKU",
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

.annotation build LOooO0o0/o0O0ooO;
    version = "1.3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "LOooO0o0/o00OO000;",
        ">;",
        "LOooO0o0/o00ooOoO/o000O00O/o00O0OO/OooO00o;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o()J
    .locals 2

    invoke-virtual {p0}, LOooO0o0/o00ooO00/o00O0OOO;->OooO0O0()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract OooO0O0()J
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, LOooO0o0/o00ooO00/o00O0OOO;->OooO00o()J

    move-result-wide v0

    invoke-static {v0, v1}, LOooO0o0/o00OO000;->OooO0O0(J)LOooO0o0/o00OO000;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

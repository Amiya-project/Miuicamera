.class public LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;
.super Ljava/lang/Object;


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:I

.field private OooO0OO:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_0

    iput p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO00o:I

    iput p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0O0:I

    iput p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0OO:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Lower bound cannot be greater then upper bound"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Lower bound cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public OooO00o()Z
    .locals 1

    iget v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0OO:I

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0O0:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public OooO0O0()I
    .locals 0

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO00o:I

    return p0
.end method

.method public OooO0OO()I
    .locals 0

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0OO:I

    return p0
.end method

.method public OooO0Oo()I
    .locals 0

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0O0:I

    return p0
.end method

.method public OooO0o0(I)V
    .locals 3

    iget v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO00o:I

    const-string v1, "pos: "

    if-lt p1, v0, :cond_1

    iget v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0O0:I

    if-gt p1, v0, :cond_0

    iput p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0OO:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > upperBound: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0O0:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < lowerBound: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO00o:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO00o:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0OO:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;->OooO0O0:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lci;
.super Lch;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lch;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lci;->a:[B

    return-void
.end method


# virtual methods
.method public final OooO(Leb;)V
    .locals 2

    iget-object v0, p0, Lci;->a:[B

    invoke-virtual {p0}, Lci;->OooOOo0()I

    move-result v1

    invoke-virtual {p0}, Lci;->OooO0OO()I

    move-result p0

    check-cast p1, Lcn;

    invoke-virtual {p1, v0, v1, p0}, Lcn;->Ooooo00([BII)V

    return-void
.end method

.method public OooO00o(I)B
    .locals 0

    iget-object p0, p0, Lci;->a:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public OooO0OO()I
    .locals 0

    iget-object p0, p0, Lci;->a:[B

    array-length p0, p0

    return p0
.end method

.method public final OooO0Oo(II)I
    .locals 1

    iget-object v0, p0, Lci;->a:[B

    invoke-virtual {p0}, Lci;->OooOOo0()I

    move-result p0

    invoke-static {p1, v0, p0, p2}, Ldj;->OooO00o(I[BII)I

    move-result p0

    return p0
.end method

.method public final OooO0oo(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lci;->a:[B

    invoke-virtual {p0}, Lci;->OooOOo0()I

    move-result v2

    invoke-virtual {p0}, Lci;->OooO0OO()I

    move-result p0

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public OooOO0([BI)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public OooOO0O(I)B
    .locals 0

    iget-object p0, p0, Lci;->a:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public final OooOO0o(I)Lck;
    .locals 2

    invoke-virtual {p0}, Lci;->OooO0OO()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lck;->OooO0o0(III)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance v0, Lcd;

    iget-object v1, p0, Lci;->a:[B

    invoke-virtual {p0}, Lci;->OooOOo0()I

    move-result p0

    invoke-direct {v0, v1, p0, p1}, Lcd;-><init>([BII)V

    return-object v0

    :cond_0
    sget-object p0, Lck;->b:Lck;

    return-object p0
.end method

.method public final OooOOO0()Z
    .locals 2

    invoke-virtual {p0}, Lci;->OooOOo0()I

    move-result v0

    iget-object v1, p0, Lci;->a:[B

    invoke-virtual {p0}, Lci;->OooO0OO()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {v1, v0, p0}, Lfx;->OooO0o([BII)Z

    move-result p0

    return p0
.end method

.method public OooOOo0()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p1, p0, :cond_9

    instance-of v1, p1, Lck;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lci;->OooO0OO()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lck;

    invoke-virtual {v3}, Lck;->OooO0OO()I

    move-result v3

    if-ne v1, v3, :cond_8

    invoke-virtual {p0}, Lci;->OooO0OO()I

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, p1, Lci;

    if-eqz v1, :cond_6

    check-cast p1, Lci;

    iget v1, p0, Lck;->c:I

    iget v3, p1, Lck;->c:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lci;->OooO0OO()I

    move-result v1

    invoke-virtual {p1}, Lck;->OooO0OO()I

    move-result v3

    if-gt v1, v3, :cond_5

    invoke-virtual {p1}, Lck;->OooO0OO()I

    move-result v3

    if-gt v1, v3, :cond_4

    iget-object v3, p0, Lci;->a:[B

    iget-object v4, p1, Lci;->a:[B

    invoke-virtual {p0}, Lci;->OooOOo0()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lci;->OooOOo0()I

    move-result p0

    invoke-virtual {p1}, Lci;->OooOOo0()I

    move-result p1

    :goto_1
    if-ge p0, v5, :cond_3

    aget-byte v1, v3, p0

    aget-byte v6, v4, p1

    if-ne v1, v6, :cond_2

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    return v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lck;->OooO0OO()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ran off end of other: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lci;->OooO0OO()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length too large: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    return v0

    :cond_8
    return v2

    :cond_9
    return v0
.end method

.class public final Lcn;
.super Leb;


# static fields
.field public static final a:Z

.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field public b:Lco;

.field private final d:[B

.field private final e:I

.field private f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcn;->c:Ljava/util/logging/Logger;

    sget-boolean v0, Lfr;->b:Z

    sput-boolean v0, Lcn;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leb;-><init>()V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    invoke-direct {p0}, Lcn;-><init>()V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iput-object p1, p0, Lcn;->d:[B

    iput v2, p0, Lcn;->f:I

    iput p2, p0, Lcn;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Oooo(Leh;Les;)I
    .locals 2

    check-cast p0, Lbu;

    invoke-virtual {p0}, Lbu;->OooO0OO()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Les;->OooO0O0(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lbu;->OooO0O0(I)V

    :cond_0
    invoke-static {v0}, Lcn;->o0Oo0oo(I)I

    move-result p0

    return p0
.end method

.method public static Oooo0(ILdq;)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1}, Lcn;->Oooo0oO(Ldq;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Oooo00O(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lga;->OooO0O0(II)I

    move-result p0

    invoke-static {p0}, Lcn;->o00Ooo(I)I

    move-result p0

    return p0
.end method

.method public static Oooo00o(ILck;)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1}, Lcn;->Oooo0o(Lck;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Oooo0O0(ILeh;Les;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    add-int/2addr p0, p0

    check-cast p1, Lbu;

    invoke-virtual {p1}, Lbu;->OooO0OO()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Les;->OooO0O0(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lbu;->OooO0O0(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static Oooo0OO(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1}, Lcn;->OoooO00(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Oooo0o(Lck;)I
    .locals 0

    invoke-virtual {p0}, Lck;->OooO0OO()I

    move-result p0

    invoke-static {p0}, Lcn;->o0Oo0oo(I)I

    move-result p0

    return p0
.end method

.method public static Oooo0o0(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    cmp-long v0, p0, v2

    if-ltz v0, :cond_3

    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0xe

    ushr-long/2addr p0, v4

    :cond_1
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    add-int/2addr v0, v1

    :cond_2
    return v0

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    return v1
.end method

.method public static Oooo0oO(Ldq;)I
    .locals 1

    iget-object v0, p0, Ldq;->b:Lck;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ldq;->b:Lck;

    invoke-virtual {p0}, Lck;->OooO0OO()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldq;->a:Leh;

    if-eqz v0, :cond_1

    iget-object p0, p0, Ldq;->a:Leh;

    invoke-interface {p0}, Leh;->f()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcn;->o0Oo0oo(I)I

    move-result p0

    return p0
.end method

.method public static Oooo0oo(Leh;)I
    .locals 0

    invoke-interface {p0}, Leh;->f()I

    move-result p0

    invoke-static {p0}, Lcn;->o0Oo0oo(I)I

    move-result p0

    return p0
.end method

.method public static OoooO0([B)Lcn;
    .locals 2

    array-length v0, p0

    new-instance v1, Lcn;

    invoke-direct {v1, p0, v0}, Lcn;-><init>([BI)V

    return-object v1
.end method

.method public static OoooO00(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lfx;->OooO0Oo(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lfv; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcn;->o0Oo0oo(I)I

    move-result p0

    return p0
.end method

.method public static OooooO0(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcn;->o00Ooo(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static OooooOO(II)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1}, Lcn;->OooooO0(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static OooooOo(IJ)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1, p2}, Lcn;->Oooo0o0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static Oooooo([B)I
    .locals 0

    array-length p0, p0

    invoke-static {p0}, Lcn;->o0Oo0oo(I)I

    move-result p0

    return p0
.end method

.method public static Oooooo0(J)I
    .locals 0

    invoke-static {p0, p1}, Lcn;->o00oO0o(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcn;->Oooo0o0(J)I

    move-result p0

    return p0
.end method

.method public static o0000(I)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static o00000o0(I)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static o00000oO(I)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static o00000oo(I)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static o0000O00(I)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static o0000Ooo(I)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static o0000oo(I)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static o000OOo(I)I
    .locals 1

    add-int v0, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static o00Ooo(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-eqz v0, :cond_3

    and-int/lit16 v0, p0, -0x4000

    if-eqz v0, :cond_2

    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static o00o0O(II)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1}, Lcn;->o00Ooo(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static o00oO0o(J)J
    .locals 3

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static o00ooo(IJ)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1, p2}, Lcn;->Oooo0o0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static o0OO00O(II)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1}, Lcn;->OooooO0(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static o0Oo0oo(I)I
    .locals 1

    invoke-static {p0}, Lcn;->o00Ooo(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static o0ooOO0(I)I
    .locals 0

    invoke-static {p0}, Lcn;->o000OOo(I)I

    move-result p0

    invoke-static {p0}, Lcn;->o00Ooo(I)I

    move-result p0

    return p0
.end method

.method public static o0ooOOo(II)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1}, Lcn;->o0ooOO0(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static o0ooOoO(IJ)I
    .locals 0

    invoke-static {p0}, Lcn;->Oooo00O(I)I

    move-result p0

    invoke-static {p1, p2}, Lcn;->Oooooo0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static oo000o(Leh;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Leh;->f()I

    move-result p0

    return p0
.end method


# virtual methods
.method public OoooO(B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcn;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final OoooO0O()V
    .locals 1

    invoke-virtual {p0}, Lcn;->Ooooo0o()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final OoooOO0(ID)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcn;->o000000O(IJ)V

    return-void
.end method

.method public final OoooOOO(II)V
    .locals 0

    invoke-static {p2}, Lcn;->o000OOo(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn;->o00000O(II)V

    return-void
.end method

.method public final OoooOOo(IJ)V
    .locals 0

    invoke-static {p2, p3}, Lcn;->o00oO0o(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcn;->oo0o0Oo(IJ)V

    return-void
.end method

.method public OoooOo0(ILeh;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcn;->o000000(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcn;->o00000O(II)V

    invoke-virtual {p0, v1, v2}, Lcn;->o000000(II)V

    invoke-interface {p2}, Leh;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn;->o00000O0(I)V

    invoke-interface {p2, p0}, Leh;->OooO00o(Lcn;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcn;->o000000(II)V

    return-void
.end method

.method public OoooOoO(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    invoke-virtual {p0, p2}, Lcn;->OoooO(B)V

    return-void
.end method

.method public final OoooOoo(Ljava/lang/String;Lfv;)V
    .locals 6

    sget-object v0, Lcn;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Ldj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcn;->o00000O0(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcn;->o00Oo0([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcm; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcm;

    invoke-direct {p1, p0}, Lcm;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public Ooooo00([BII)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcn;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcn;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcm;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcn;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public Ooooo0o()I
    .locals 1

    iget v0, p0, Lcn;->e:I

    iget p0, p0, Lcn;->f:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public OoooooO(ILck;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    invoke-virtual {p2}, Lck;->OooO0OO()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn;->o00000O0(I)V

    invoke-virtual {p2, p0}, Lck;->OooO(Leb;)V

    return-void
.end method

.method public Ooooooo(ILeh;Les;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    move-object p1, p2

    check-cast p1, Lbu;

    invoke-virtual {p1}, Lbu;->OooO0OO()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p3, p1}, Les;->OooO0O0(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lbu;->OooO0O0(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lcn;->o00000O0(I)V

    iget-object p0, p0, Lcn;->b:Lco;

    invoke-interface {p3, p2, p0}, Les;->OooO0o(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method public o00000(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    invoke-virtual {p0, p2}, Lcn;->o000000o(I)V

    return-void
.end method

.method public o000000(II)V
    .locals 0

    invoke-static {p1, p2}, Lga;->OooO0O0(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcn;->o00000O0(I)V

    return-void
.end method

.method public o000000O(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    invoke-virtual {p0, p2, p3}, Lcn;->o0O0O00(J)V

    return-void
.end method

.method public o000000o(I)V
    .locals 2

    if-gez p1, :cond_0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcn;->o0OOO0o(J)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcn;->o00000O0(I)V

    return-void
.end method

.method public o00000O(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    invoke-virtual {p0, p2}, Lcn;->o00000O0(I)V

    return-void
.end method

.method public o00000O0(I)V
    .locals 4

    sget-boolean v0, Lcn;->a:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lbx;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcn;->Ooooo0o()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lfr;->OooOOO0([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    invoke-static {v0, v1, v2, p0}, Lfr;->OooOOO0([BJB)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lfr;->OooOOO0([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    invoke-static {v0, v1, v2, p0}, Lfr;->OooOOO0([BJB)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lfr;->OooOOO0([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    invoke-static {v0, v1, v2, p0}, Lfr;->OooOOO0([BJB)V

    return-void

    :cond_3
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lfr;->OooOOO0([BJB)V

    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    ushr-int/lit8 p0, p1, 0x7

    int-to-byte p0, p0

    invoke-static {v0, v1, v2, p0}, Lfr;->OooOOO0([BJB)V

    return-void

    :cond_4
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    int-to-byte p0, p1

    invoke-static {v0, v1, v2, p0}, Lfr;->OooOOO0([BJB)V

    return-void

    :cond_5
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcn;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public o00000OO(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcn;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public o00000Oo(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    invoke-virtual {p0, p2}, Lcn;->o00000OO(I)V

    return-void
.end method

.method public final o000oOoO(IF)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn;->o00000Oo(II)V

    return-void
.end method

.method public o00O0O(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcn;->f:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcn;->o00Ooo(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcn;->o00Ooo(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-static {p1}, Lfx;->OooO0Oo(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn;->o00000O0(I)V

    iget-object v1, p0, Lcn;->d:[B

    iget v2, p0, Lcn;->f:I

    invoke-virtual {p0}, Lcn;->Ooooo0o()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lfx;->OooO0o0(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcn;->f:I

    return-void

    :cond_0
    add-int v1, v0, v2

    iput v1, p0, Lcn;->f:I

    iget-object v3, p0, Lcn;->d:[B

    invoke-virtual {p0}, Lcn;->Ooooo0o()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lfx;->OooO0o0(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcn;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcn;->o00000O0(I)V

    iput v1, p0, Lcn;->f:I
    :try_end_0
    .catch Lfv; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcm;

    invoke-direct {p1, p0}, Lcm;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v1

    iput v0, p0, Lcn;->f:I

    invoke-virtual {p0, p1, v1}, Lcn;->OoooOoo(Ljava/lang/String;Lfv;)V

    return-void
.end method

.method public o00Oo0([BII)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcn;->Ooooo00([BII)V

    return-void
.end method

.method public o00oO0O(ILck;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcn;->o000000(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcn;->o00000O(II)V

    invoke-virtual {p0, v1, p2}, Lcn;->OoooooO(ILck;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcn;->o000000(II)V

    return-void
.end method

.method public o0O0O00(J)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn;->f:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcm;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcn;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public o0OOO0o(J)V
    .locals 9

    sget-boolean v0, Lcn;->a:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn;->Ooooo0o()I

    move-result v0

    const/16 v6, 0xa

    if-ge v0, v6, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn;->d:[B

    iget v6, p0, Lcn;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcn;->f:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lfr;->OooOOO0([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    int-to-long v1, v1

    long-to-int p0, p1

    int-to-byte p0, p0

    invoke-static {v0, v1, v2, p0}, Lfr;->OooOOO0([BJB)V

    return-void

    :cond_2
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcn;->d:[B

    iget v6, p0, Lcn;->f:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcn;->f:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    ushr-long/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn;->d:[B

    iget v1, p0, Lcn;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn;->f:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcm;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcn;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget p0, p0, Lcn;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "Pos: %d, limit: %d, len: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcm;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public o0OoOo0(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    invoke-virtual {p0, p2}, Lcn;->o00O0O(Ljava/lang/String;)V

    return-void
.end method

.method public oo0o0Oo(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn;->o000000(II)V

    invoke-virtual {p0, p2, p3}, Lcn;->o0OOO0o(J)V

    return-void
.end method

.method public final ooOO(Leh;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1, p0}, Leh;->OooO00o(Lcn;)V

    return-void
.end method

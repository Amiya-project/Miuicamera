.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;
.super Ljava/io/InputStream;


# static fields
.field private static final o0000o0o:I = 0x800


# instance fields
.field private final o0000o:J

.field private o0000oO0:J

.field private o0000oOO:Z

.field private o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;


# direct methods
.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOO:Z

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    const-string p1, "Content length"

    invoke-static {p2, p3, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooO(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    instance-of v1, v0, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO00o;

    if-eqz v1, :cond_0

    check-cast v0, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO00o;

    invoke-interface {v0}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO00o;->length()I

    move-result v0

    iget-wide v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    iget-wide v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    sub-long/2addr v1, v3

    long-to-int p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOO:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    iget-wide v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    iget-wide v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/16 v1, 0x800

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->read([B)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOO:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOO:Z

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOO:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    iget-wide v2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    invoke-interface {v0}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;->read()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-wide v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    iget-wide v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, LOooO0oo/OooO00o/OooO0O0/OooO00o;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Premature end of Content-Length delimited message body (expected: %,d; received: %,d)"

    invoke-direct {v0, p0, v1}, LOooO0oo/OooO00o/OooO0O0/OooO00o;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-wide v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    :goto_0
    return v0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Attempted read from closed stream."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOO:Z

    if-nez v0, :cond_5

    iget-wide v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    iget-wide v2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-ltz v4, :cond_0

    return v5

    :cond_0
    int-to-long v6, p3

    add-long/2addr v6, v0

    cmp-long v4, v6, v2

    if-lez v4, :cond_1

    sub-long/2addr v2, v0

    long-to-int p3, v2

    :cond_1
    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;

    invoke-interface {v0, p1, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_3

    iget-wide p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    iget-wide v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, LOooO0oo/OooO00o/OooO0O0/OooO00o;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-wide v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-wide v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, p3

    const-string p0, "Premature end of Content-Length delimited message body (expected: %,d; received: %,d)"

    invoke-direct {p1, p0, p2}, LOooO0oo/OooO00o/OooO0O0/OooO00o;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_0
    if-lez p1, :cond_4

    iget-wide p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    :cond_4
    return p1

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attempted read from closed stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x800

    new-array v2, v2, [B

    iget-wide v3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000o:J

    iget-wide v5, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->o0000oO0:J

    sub-long/2addr v3, v5

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v3, v0

    :goto_0
    cmp-long v5, p1, v0

    if-lez v5, :cond_2

    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0, v2, v5, v6}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOO0O;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long/2addr p1, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v3
.end method

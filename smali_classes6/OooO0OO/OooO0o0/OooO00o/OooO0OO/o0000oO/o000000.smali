.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;
.super LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo0o0Oo;


# instance fields
.field public final o0000oOO:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/oo0o0Oo;-><init>()V

    iput-short p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    return-void
.end method

.method public static o000O0o(S)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;
    .locals 1

    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;

    invoke-direct {v0, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public OooO0o()LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo$OooO0O0;
    .locals 0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo$OooO0O0;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo$OooO0O0;

    return-object p0
.end method

.method public OooO0oO()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;
    .locals 0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o000O000:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    return-object p0
.end method

.method public final Oooo0OO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo0;
        }
    .end annotation

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    invoke-virtual {p1, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;->o000000o(S)V

    return-void
.end method

.method public Ooooo0o()Ljava/lang/String;
    .locals 0

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    invoke-static {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOOOO;->OooOo0o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Oooooo0()Ljava/math/BigInteger;
    .locals 2

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public Ooooooo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;

    if-eqz v2, :cond_3

    check-cast p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;

    iget-short p1, p1, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    return p0
.end method

.method public o00000O()I
    .locals 0

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    return p0
.end method

.method public o0000O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o0000OO()J
    .locals 2

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public o0000OOO()Ljava/lang/Number;
    .locals 0

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public o0000oO0()S
    .locals 0

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    return p0
.end method

.method public o0000oo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public o000oOoO(Z)Z
    .locals 0

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o00Oo0()D
    .locals 2

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    int-to-double v0, p0

    return-wide v0
.end method

.method public o0OoOo0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public oo0o0Oo()F
    .locals 0

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    int-to-float p0, p0

    return p0
.end method

.method public ooOO()Ljava/math/BigDecimal;
    .locals 2

    iget-short p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000oO/o000000;->o0000oOO:S

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

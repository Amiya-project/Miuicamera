.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o000OOo/OooO0OO;
.super LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0oo/OooO00o/OooO0O0/o000O0/OooO<",
        "LOooO0oo/OooO00o/OooO0O0/o00Ooo;",
        "LOooO0oo/OooO00o/OooO0O0/OooOo00;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;LOooO0oo/OooO00o/OooO0O0/o00Ooo;LOooO0oo/OooO00o/OooO0O0/OooOo00;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;->OooO0O0()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0oo/OooO00o/OooO0O0/OooOo00;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOo;->OooO()I

    move-result v0

    const/16 v1, 0x3e8

    if-lez v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    invoke-interface {p0, v1}, LOooO0oo/OooO00o/OooO0O0/OooOo;->OooO0OO(I)V

    :cond_1
    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOo;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOo;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public OooOO0O()Z
    .locals 0

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;->OooO0O0()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0oo/OooO00o/OooO0O0/OooOo00;

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOo;->isOpen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

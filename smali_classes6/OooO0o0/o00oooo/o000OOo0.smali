.class public LOooO0o0/o00oooo/o000OOo0;
.super LOooO0o0/o00oooo/o000OO00;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0001\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H\u0001\u001a\u000c\u0010\u0007\u001a\u00020\u0008*\u00020\u0001H\u0001\u00a8\u0006\t"
    }
    d2 = {
        "durationUnitByIsoChar",
        "Lkotlin/time/DurationUnit;",
        "isoChar",
        "",
        "isTimeComponent",
        "",
        "durationUnitByShortName",
        "shortName",
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
    xs = "kotlin/time/DurationUnitKt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0o0/o00oooo/o000OOo0$OooO00o;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LOooO0o0/o00oooo/o000OO00;-><init>()V

    return-void
.end method

.method public static final OooO0o(CZ)LOooO0o0/o00oooo/o000O0O0;
    .locals 2
    .annotation build LOooO0o0/o0O0ooO;
        version = "1.5"
    .end annotation

    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    if-nez p1, :cond_1

    const/16 p1, 0x44

    if-ne p0, p1, :cond_0

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000ooO:LOooO0o0/o00oooo/o000O0O0;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid or unsupported duration ISO non-time unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0x48

    if-ne p0, p1, :cond_2

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000oo0:LOooO0o0/o00oooo/o000O0O0;

    goto :goto_0

    :cond_2
    const/16 p1, 0x4d

    if-ne p0, p1, :cond_3

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000oOo:LOooO0o0/o00oooo/o000O0O0;

    goto :goto_0

    :cond_3
    const/16 p1, 0x53

    if-ne p0, p1, :cond_4

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000oOO:LOooO0o0/o00oooo/o000O0O0;

    :goto_0
    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid duration ISO time unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final OooO0oO(Ljava/lang/String;)LOooO0o0/o00oooo/o000O0O0;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param
    .annotation build LOooO0o0/o0O0ooO;
        version = "1.5"
    .end annotation

    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    const-string v0, "shortName"

    invoke-static {p0, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_5

    const/16 v1, 0x68

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x73

    if-eq v0, v1, :cond_2

    const/16 v1, 0xda6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xdc5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe9e

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000o:LOooO0o0/o00oooo/o000O0O0;

    goto :goto_0

    :cond_0
    const-string v0, "ns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000o0o:LOooO0o0/o00oooo/o000O0O0;

    goto :goto_0

    :cond_1
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000oO0:LOooO0o0/o00oooo/o000O0O0;

    goto :goto_0

    :cond_2
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000oOO:LOooO0o0/o00oooo/o000O0O0;

    goto :goto_0

    :cond_3
    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000oOo:LOooO0o0/o00oooo/o000O0O0;

    goto :goto_0

    :cond_4
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000oo0:LOooO0o0/o00oooo/o000O0O0;

    goto :goto_0

    :cond_5
    const-string v0, "d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, LOooO0o0/o00oooo/o000O0O0;->o0000ooO:LOooO0o0/o00oooo/o000O0O0;

    :goto_0
    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown duration unit short name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final OooO0oo(LOooO0o0/o00oooo/o000O0O0;)Ljava/lang/String;
    .locals 3
    .param p0    # LOooO0o0/o00oooo/o000O0O0;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param
    .annotation build LOooO0o0/o0O0ooO;
        version = "1.3"
    .end annotation

    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LOooO0o0/o00oooo/o000OOo0$OooO00o;->OooO00o:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "d"

    goto :goto_0

    :pswitch_1
    const-string p0, "h"

    goto :goto_0

    :pswitch_2
    const-string p0, "m"

    goto :goto_0

    :pswitch_3
    const-string p0, "s"

    goto :goto_0

    :pswitch_4
    const-string p0, "ms"

    goto :goto_0

    :pswitch_5
    const-string/jumbo p0, "us"

    goto :goto_0

    :pswitch_6
    const-string p0, "ns"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

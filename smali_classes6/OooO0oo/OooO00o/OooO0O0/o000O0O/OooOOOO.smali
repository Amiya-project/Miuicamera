.class public final LOooO0oo/OooO00o/OooO0O0/o000O0O/OooOOOO;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)Ljava/nio/charset/CharsetDecoder;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;->OooO0o0()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;->OooO0oo()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;->OooOO0()Ljava/nio/charset/CodingErrorAction;

    move-result-object p0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;)Ljava/nio/charset/CharsetEncoder;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;->OooO0o0()Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;->OooO0oo()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO00o;->OooOO0()Ljava/nio/charset/CodingErrorAction;

    move-result-object p0

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOo00;
.super LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0O0<",
        "LOooO0oo/OooO00o/OooO0O0/o0ooOOo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOo00;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;)V

    return-void
.end method

.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0O0;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO0O0(LOooO0oo/OooO00o/OooO0O0/o00oO0o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LOooO0oo/OooO00o/OooO0O0/o0ooOOo;

    invoke-virtual {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOo00;->OooO0OO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;)V

    return-void
.end method

.method public OooO0OO(LOooO0oo/OooO00o/OooO0O0/o0ooOOo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0O0;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0O0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    invoke-interface {p1}, LOooO0oo/OooO00o/OooO0O0/o0ooOOo;->OooOoO0()LOooO0oo/OooO00o/OooO0O0/o0000O0O;

    move-result-object p1

    invoke-interface {v0, v1, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;LOooO0oo/OooO00o/OooO0O0/o0000O0O;)LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    iget-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0O0;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO0O0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    invoke-interface {p1, p0}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;->OooO0OO(LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;)V

    return-void
.end method

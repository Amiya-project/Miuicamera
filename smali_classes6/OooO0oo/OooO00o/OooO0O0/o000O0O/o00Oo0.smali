.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation


# static fields
.field public static final OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;


# instance fields
.field public final OooO0O0:LOooO0oo/OooO00o/OooO0O0/o0000O0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;

    invoke-direct {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;-><init>()V

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/oo000o;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/oo000o;

    invoke-direct {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;-><init>(LOooO0oo/OooO00o/OooO0O0/o0000O0;)V

    return-void
.end method

.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o0000O0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Reason phrase catalog"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0oo/OooO00o/OooO0O0/o0000O0;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o0000O0;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0oo/OooO00o/OooO0O0/o0000oo;ILOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o0OO00O;
    .locals 2

    const-string v0, "HTTP version"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO0OO(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)Ljava/util/Locale;

    move-result-object p3

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o0000O0;

    invoke-interface {v0, p2, p3}, LOooO0oo/OooO00o/OooO0O0/o0000O0;->OooO00o(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LOooO0oo/OooO00o/OooO0O0/o000O00/o0OoOo0;

    invoke-direct {v1, p1, p2, v0}, LOooO0oo/OooO00o/OooO0O0/o000O00/o0OoOo0;-><init>(LOooO0oo/OooO00o/OooO0O0/o0000oo;ILjava/lang/String;)V

    new-instance p1, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOOOO;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o0000O0;

    invoke-direct {p1, v1, p0, p3}, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOOOO;-><init>(LOooO0oo/OooO00o/OooO0O0/o000OO;LOooO0oo/OooO00o/OooO0O0/o0000O0;Ljava/util/Locale;)V

    return-object p1
.end method

.method public OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000OO;LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o0OO00O;
    .locals 2

    const-string v0, "Status line"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOOOO;

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o0000O0;

    invoke-virtual {p0, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO0OO(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOOOO;-><init>(LOooO0oo/OooO00o/OooO0O0/o000OO;LOooO0oo/OooO00o/OooO0O0/o0000O0;Ljava/util/Locale;)V

    return-object v0
.end method

.method public OooO0OO(LOooO0oo/OooO00o/OooO0O0/o000O0Oo/OooOO0O;)Ljava/util/Locale;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

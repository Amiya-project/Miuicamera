.class public final LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000O0$OooOO0;
.super LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOO0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000O0$OooO00o<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field private static final o0000o:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000O0$OooOO0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class p1, Ljava/lang/Object;

    invoke-direct {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000O0$OooO00o;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/Object;)Ljava/util/UUID;
    .locals 0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public OooO00o(LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000oo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000oo<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000O0$OooOO0;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public OooO0O0(Ljava/lang/Class;)LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000oo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000oo<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic OooO0OO(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000O0$OooOO0;->OooO(Ljava/lang/Object;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public OooO0o(Ljava/lang/Object;)LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000oo$OooO00o;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000oo$OooO00o;

    const-class v1, LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000O0$OooOO0;

    invoke-direct {v0, v1, p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000oo$OooO00o;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public OooO0oo(Ljava/lang/Object;)LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000oo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "LOooO0OO/OooO0o0/OooO00o/OooO00o/o0000oo<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

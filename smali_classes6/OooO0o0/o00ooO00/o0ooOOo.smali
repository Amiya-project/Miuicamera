.class public final LOooO0o0/o00ooO00/o0ooOOo;
.super Ljava/lang/Object;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/collections/CollectionSystemProperties;",
        "",
        "()V",
        "brittleContainsOptimizationEnabled",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final OooO00o:LOooO0o0/o00ooO00/o0ooOOo;
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation
.end field

.field public static final OooO0O0:Z
    .annotation build LOooO0o0/o00ooOoO/o000000O;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0o0/o00ooO00/o0ooOOo;

    invoke-direct {v0}, LOooO0o0/o00ooO00/o0ooOOo;-><init>()V

    sput-object v0, LOooO0o0/o00ooO00/o0ooOOo;->OooO00o:LOooO0o0/o00ooO00/o0ooOOo;

    const-string v0, "kotlin.collections.convert_arg_to_set_in_removeAll"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, LOooO0o0/o00ooO00/o0ooOOo;->OooO0O0:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00OO0O/o00000O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00OO0O/o00000O0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o00000O0;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o00000O0;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o00000O0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00OO0O/o00000O0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/camera/ui/ScreenHint;->lambda$updateHint$0()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

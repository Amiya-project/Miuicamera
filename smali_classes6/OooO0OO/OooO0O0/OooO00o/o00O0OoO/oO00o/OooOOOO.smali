.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o/OooOOOO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o/OooOOOO;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o/OooOOOO;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o/OooOOOO;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o/OooOOOO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00o/OooOOOO;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/protocol/protocols/TopAlert;

    invoke-static {p1}, Lcom/android/camera/fragment/videoprompter/FragmentVideoPrompter;->lambda$onClick$11(Lcom/android/camera/protocol/protocols/TopAlert;)V

    return-void
.end method

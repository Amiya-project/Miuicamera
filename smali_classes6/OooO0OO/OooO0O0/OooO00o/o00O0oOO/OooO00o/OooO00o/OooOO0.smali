.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0oOO/OooO00o/OooO00o/OooOO0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0oOO/OooO00o/OooO00o/OooOO0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0oOO/OooO00o/OooO00o/OooOO0;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00O0oOO/OooO00o/OooO00o/OooOO0;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0oOO/OooO00o/OooO00o/OooOO0;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0oOO/OooO00o/OooO00o/OooOO0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/protocol/protocols/RunningState;

    invoke-static {p1}, Lcom/android/camera/protocol/protocols/utils/RunningStateUtil;->lambda$isRecordingOrPaused$0(Lcom/android/camera/protocol/protocols/RunningState;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

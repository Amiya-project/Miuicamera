.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00Ooo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o0o:Lcom/android/camera/Camera$MyOrientationEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera$MyOrientationEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00Ooo;->o0000o0o:Lcom/android/camera/Camera$MyOrientationEventListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00Ooo;->o0000o0o:Lcom/android/camera/Camera$MyOrientationEventListener;

    check-cast p1, Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera$MyOrientationEventListener;->OooO00o(Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;)V

    return-void
.end method

.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOo/o00O0O;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o0o:Lcom/android/camera/features/mode/video/VideoModeUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mode/video/VideoModeUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOo/o00O0O;->o0000o0o:Lcom/android/camera/features/mode/video/VideoModeUI;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0Oo/OooO00o/OooOOo/o00O0O;->o0000o0o:Lcom/android/camera/features/mode/video/VideoModeUI;

    check-cast p1, Lcom/android/camera/protocol/VideoPrompterProtocol;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mode/video/VideoModeUI;->OooO0Oo(Lcom/android/camera/protocol/VideoPrompterProtocol;)V

    return-void
.end method

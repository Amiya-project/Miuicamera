.class public final synthetic LOooO0OO/OooO0O0/OooO00o/OooOo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:Z

.field public final synthetic o0000o0o:Lcom/android/camera/Camera;

.field public final synthetic o0000oO0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/OooOo;->o0000o0o:Lcom/android/camera/Camera;

    iput-boolean p2, p0, LOooO0OO/OooO0O0/OooO00o/OooOo;->o0000o:Z

    iput-boolean p3, p0, LOooO0OO/OooO0O0/OooO00o/OooOo;->o0000oO0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/OooOo;->o0000o0o:Lcom/android/camera/Camera;

    iget-boolean v1, p0, LOooO0OO/OooO0O0/OooO00o/OooOo;->o0000o:Z

    iget-boolean p0, p0, LOooO0OO/OooO0O0/OooO00o/OooOo;->o0000oO0:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/Camera;->OooO0o0(ZZ)V

    return-void
.end method

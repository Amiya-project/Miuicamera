.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00OO0o/o000;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:Z

.field public final synthetic o0000o0o:Lcom/android/camera/zoommap/ZoomMapController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0o/o000;->o0000o0o:Lcom/android/camera/zoommap/ZoomMapController;

    iput-boolean p2, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0o/o000;->o0000o:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0o/o000;->o0000o0o:Lcom/android/camera/zoommap/ZoomMapController;

    iget-boolean p0, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0o/o000;->o0000o:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/zoommap/ZoomMapController;->OooO0Oo(Z)V

    return-void
.end method

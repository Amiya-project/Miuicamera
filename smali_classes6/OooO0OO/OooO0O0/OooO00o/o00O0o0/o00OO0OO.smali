.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0o0/o00OO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:I

.field public final synthetic o0000o0o:Lcom/android/camera/module/DollyZoomModule;

.field public final synthetic o0000oO0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o00OO0OO;->o0000o0o:Lcom/android/camera/module/DollyZoomModule;

    iput p2, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o00OO0OO;->o0000o:I

    iput p3, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o00OO0OO;->o0000oO0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o00OO0OO;->o0000o0o:Lcom/android/camera/module/DollyZoomModule;

    iget v1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o00OO0OO;->o0000o:I

    iget p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o00OO0OO;->o0000oO0:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/DollyZoomModule;->OooOOOO(II)V

    return-void
.end method

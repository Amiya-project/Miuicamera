.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o000Oo0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o0o:Lcom/android/camera/GoogleLens;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/GoogleLens;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o000Oo0;->o0000o0o:Lcom/android/camera/GoogleLens;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o000Oo0;->o0000o0o:Lcom/android/camera/GoogleLens;

    invoke-virtual {p0}, Lcom/android/camera/GoogleLens;->startLensActivity()V

    return-void
.end method

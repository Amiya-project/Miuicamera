.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00o00;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o:Z

.field public final synthetic o0000o0o:Lcom/android/camera/module/MiLiveModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/MiLiveModule;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00o00;->o0000o0o:Lcom/android/camera/module/MiLiveModule;

    iput-boolean p2, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00o00;->o0000o:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00o00;->o0000o0o:Lcom/android/camera/module/MiLiveModule;

    iget-boolean p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/o0O00o00;->o0000o:Z

    check-cast p1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/MiLiveModule;->OooOO0O(ZLcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method

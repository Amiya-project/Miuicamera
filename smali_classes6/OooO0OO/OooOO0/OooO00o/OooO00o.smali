.class public final synthetic LOooO0OO/OooOO0/OooO00o/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

.field public final synthetic o0000o0o:Lcom/xiaomi/camera/MIVICaptureManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/MIVICaptureManager;Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooOO0/OooO00o/OooO00o;->o0000o0o:Lcom/xiaomi/camera/MIVICaptureManager;

    iput-object p2, p0, LOooO0OO/OooOO0/OooO00o/OooO00o;->o0000o:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooOO0/OooO00o/OooO00o;->o0000o0o:Lcom/xiaomi/camera/MIVICaptureManager;

    iget-object p0, p0, LOooO0OO/OooOO0/OooO00o/OooO00o;->o0000o:Lcom/xiaomi/camera/mivi/bean/ResultOutputData;

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/MIVICaptureManager;->OooO0OO(Lcom/xiaomi/camera/mivi/bean/ResultOutputData;)V

    return-void
.end method

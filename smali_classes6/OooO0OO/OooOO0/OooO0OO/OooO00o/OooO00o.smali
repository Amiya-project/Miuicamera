.class public final synthetic LOooO0OO/OooOO0/OooO0OO/OooO00o/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o0o:Lcom/xiaomi/idm/task/SendBlockTask;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/idm/task/SendBlockTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/OooO00o;->o0000o0o:Lcom/xiaomi/idm/task/SendBlockTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0OO/OooOO0/OooO0OO/OooO00o/OooO00o;->o0000o0o:Lcom/xiaomi/idm/task/SendBlockTask;

    invoke-static {p0}, Lcom/xiaomi/idm/api/IDMBase;->OooO00o(Lcom/xiaomi/idm/task/SendBlockTask;)V

    return-void
.end method

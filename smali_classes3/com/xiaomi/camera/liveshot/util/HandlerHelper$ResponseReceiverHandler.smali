.class public final Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/util/HandlerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseReceiverHandler"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field public releaseRequested:Z

.field public reply:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "looper",
            "lock"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->lock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Lcom/xiaomi/camera/liveshot/util/HandlerHelper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->lock:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->reply:Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ResponseReceiverHandler;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

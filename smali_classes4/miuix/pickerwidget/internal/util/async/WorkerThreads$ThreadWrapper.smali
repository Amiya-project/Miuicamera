.class public Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/internal/util/async/WorkerThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadWrapper"
.end annotation


# instance fields
.field public refCount:I

.field public final thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->refCount:I

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/pickerwidget/internal/util/async/WorkerThreads$ThreadWrapper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

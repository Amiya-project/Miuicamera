.class public Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$3;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$3;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$100(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">> run, onVideoStoppedMainThread"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$3;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$200(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$MainThreadMediaPlayerListener;->onVideoStoppedMainThread()V

    :cond_1
    invoke-static {}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$3;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-static {p0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$100(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<< run, onVideoStoppedMainThread"

    invoke-static {p0, v0}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

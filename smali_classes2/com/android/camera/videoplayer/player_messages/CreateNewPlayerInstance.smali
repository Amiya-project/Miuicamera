.class public Lcom/android/camera/videoplayer/player_messages/CreateNewPlayerInstance;
.super Lcom/android/camera/videoplayer/player_messages/PlayerMessage;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    return-void
.end method


# virtual methods
.method public performAction(Ljava/lang/ref/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/camera/videoplayer/ui/VideoPlayerView;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->createNewPlayerInstance()V

    return-void
.end method

.method public stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CREATED:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

.method public stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 0

    sget-object p0, Lcom/android/camera/videoplayer/PlayerMessageState;->CREATING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object p0
.end method

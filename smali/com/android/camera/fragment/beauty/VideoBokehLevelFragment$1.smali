.class public Lcom/android/camera/fragment/beauty/VideoBokehLevelFragment$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/VideoBokehLevelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/VideoBokehLevelFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/VideoBokehLevelFragment;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "arg0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/VideoBokehLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/VideoBokehLevelFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/VideoBokehLevelFragment$1;->this$0:Lcom/android/camera/fragment/beauty/VideoBokehLevelFragment;

    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/VideoBokehLevelFragment;->resetSlideTip()V

    :goto_0
    return-void
.end method

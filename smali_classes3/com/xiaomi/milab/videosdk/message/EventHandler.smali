.class public Lcom/xiaomi/milab/videosdk/message/EventHandler;
.super Landroid/os/Handler;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mAudioExtractCallback:Lcom/xiaomi/milab/videosdk/interfaces/AudioExtractCallback;

.field private mExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

.field private mPlayCallback:Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;

.field private mPreviewExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

.field private mTimelineCacllback:Lcom/xiaomi/milab/videosdk/interfaces/TimelineCallback;

.field private mTranscodeCallback:Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/milab/videosdk/message/EventHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p1, "EventHandler"

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPlayCallback:Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPreviewExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mTranscodeCallback:Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mAudioExtractCallback:Lcom/xiaomi/milab/videosdk/interfaces/AudioExtractCallback;

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mTimelineCacllback:Lcom/xiaomi/milab/videosdk/interfaces/TimelineCallback;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/milab/videosdk/message/EventHandler;

    const-string v1, "EventHandler"

    if-nez v0, :cond_0

    const-string p0, "XmsContext went away with unhandled events"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get msgType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "msgEvent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "msgValue"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPreviewExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;->onExportFail()V

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPreviewExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;->onExportCancel()V

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPreviewExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;->onExportSuccess()V

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPreviewExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    if-eqz p0, :cond_5

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, p1}, Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;->onExportProgress(I)V

    goto/16 :goto_0

    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x1f5

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mTimelineCacllback:Lcom/xiaomi/milab/videosdk/interfaces/TimelineCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/interfaces/TimelineCallback;->onTimelineStarted()V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x191

    if-eq v0, v1, :cond_3

    const/16 p1, 0x192

    if-eq v0, p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mAudioExtractCallback:Lcom/xiaomi/milab/videosdk/interfaces/AudioExtractCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/interfaces/AudioExtractCallback;->onExtractFinished()V

    goto/16 :goto_0

    :cond_3
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mAudioExtractCallback:Lcom/xiaomi/milab/videosdk/interfaces/AudioExtractCallback;

    if-eqz p0, :cond_5

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, p1}, Lcom/xiaomi/milab/videosdk/interfaces/AudioExtractCallback;->onExtractProgress(I)V

    goto/16 :goto_0

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mTranscodeCallback:Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;->onTranscodeFail()V

    goto/16 :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mTranscodeCallback:Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;->onTranscodeCancel()V

    goto/16 :goto_0

    :pswitch_a
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mTranscodeCallback:Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;->onTranscodeSuccess()V

    goto/16 :goto_0

    :pswitch_b
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mTranscodeCallback:Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;

    if-eqz p0, :cond_5

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, p1}, Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;->onTranscodeProgress(I)V

    goto/16 :goto_0

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_d
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;->onExportFail()V

    goto :goto_0

    :pswitch_e
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;->onExportCancel()V

    goto :goto_0

    :pswitch_f
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;->onExportSuccess()V

    goto :goto_0

    :pswitch_10
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    if-eqz p0, :cond_5

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, p1}, Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;->onExportProgress(I)V

    goto :goto_0

    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_4

    goto :goto_0

    :pswitch_12
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPlayCallback:Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;

    const/16 v0, 0x6e

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, p1}, Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;->onTimelineSurfaceChange(I)V

    invoke-static {v0, v1, v1, v1}, Lcom/xiaomi/milab/videosdk/message/XmsMessage;->OnUserCommand(IIII)V

    goto :goto_0

    :cond_4
    invoke-static {v0, v1, v1, v1}, Lcom/xiaomi/milab/videosdk/message/XmsMessage;->OnUserCommand(IIII)V

    goto :goto_0

    :pswitch_13
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPlayCallback:Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;

    if-eqz p0, :cond_5

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;->onTimelineSeekComplete(J)V

    goto :goto_0

    :pswitch_14
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPlayCallback:Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;->onPlayEOF()V

    goto :goto_0

    :pswitch_15
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPlayCallback:Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;

    if-eqz p0, :cond_5

    iget p1, p1, Landroid/os/Message;->arg2:I

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;->onPlayTimelinePosition(J)V

    goto :goto_0

    :pswitch_16
    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPlayCallback:Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;

    if-eqz p0, :cond_5

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, p1}, Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;->onTimelineStateChanged(I)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_11
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x259
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc9
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x64
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public setAudioExtractCallback(Lcom/xiaomi/milab/videosdk/interfaces/AudioExtractCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mAudioExtractCallback:Lcom/xiaomi/milab/videosdk/interfaces/AudioExtractCallback;

    return-void
.end method

.method public setExportCallback(Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    return-void
.end method

.method public setPlayCallback(Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPlayCallback:Lcom/xiaomi/milab/videosdk/interfaces/PlayCallback;

    return-void
.end method

.method public setPreviewExportCallback(Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mPreviewExportCallback:Lcom/xiaomi/milab/videosdk/interfaces/ExportCallback;

    return-void
.end method

.method public setTimelineCallback(Lcom/xiaomi/milab/videosdk/interfaces/TimelineCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mTimelineCacllback:Lcom/xiaomi/milab/videosdk/interfaces/TimelineCallback;

    return-void
.end method

.method public setTranscodeCallback(Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/message/EventHandler;->mTranscodeCallback:Lcom/xiaomi/milab/videosdk/message/TranscodeCallback;

    return-void
.end method

.class public interface abstract Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$FrameCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract loopReset()V
.end method

.method public abstract onAudioFormat(Landroid/media/MediaFormat;)V
.end method

.method public abstract onAudioFrame(Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;)V
.end method

.method public abstract onDecoderFinished()V
.end method

.method public abstract onStreamDuration(J)V
.end method

.method public abstract onVideoCrop(IIIIII)V
.end method

.method public abstract onVideoFrame(I)V
.end method

.method public abstract postRender()V
.end method

.method public abstract preRender(J)V
.end method

.class public interface abstract Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder$VideoEncoderCallBack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/magicvideoskymediacodec/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoEncoderCallBack"
.end annotation


# virtual methods
.method public abstract onVideoEncodedFrame(Z)V
.end method

.method public abstract onVideoEncoderEOF()V
.end method

.method public abstract onVideoEncoderError(I)V
.end method

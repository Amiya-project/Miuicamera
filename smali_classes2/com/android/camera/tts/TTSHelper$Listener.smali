.class public interface abstract Lcom/android/camera/tts/TTSHelper$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/tts/TTSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioFocusFailed()V
.end method

.method public abstract onTTSStarted()V
.end method

.method public abstract onTTSStopped(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

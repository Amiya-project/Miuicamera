.class public interface abstract Lcom/android/camera/protocol/protocols/live/LiveRecordControl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# static fields
.field public static final STEP_IGNORE:I = 0x1

.field public static final STEP_START:I = 0x2

.field public static final STEP_STOP:I = 0x3


# virtual methods
.method public abstract canFinishRecording()Z
.end method

.method public abstract deleteLastFragment()V
.end method

.method public abstract getNextRecordStep()I
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isRecordingPaused()Z
.end method

.method public abstract onRecordingNewFragmentFinished()V
.end method

.method public abstract startRecordingNewFragment()V
.end method

.method public abstract startRecordingNextFragment()V
.end method

.method public abstract stopRecording()V
.end method

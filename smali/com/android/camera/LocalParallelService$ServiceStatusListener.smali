.class public interface abstract Lcom/android/camera/LocalParallelService$ServiceStatusListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocalParallelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceStatusListener"
.end annotation


# virtual methods
.method public abstract onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskData"
        }
    .end annotation
.end method

.method public abstract onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskData",
            "reason"
        }
    .end annotation
.end method

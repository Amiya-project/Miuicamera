.class public interface abstract Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mode/MoreModeListAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSpringUpdateListener"
.end annotation


# virtual methods
.method public abstract canScrollDown()Z
.end method

.method public abstract canScrollUp()Z
.end method

.method public abstract getOverScrollX()F
.end method

.method public abstract getOverScrollY()F
.end method

.method public abstract getRotate()F
.end method

.method public abstract onUpdate(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation
.end method

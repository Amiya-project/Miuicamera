.class public interface abstract Lcom/android/camera/module/loader/base/SurfaceStateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/base/SurfaceStateListener$SurfaceState;
    }
.end annotation


# static fields
.field public static final SURFACE_STATE_OK:I = 0x4

.field public static final SURFACE_STATE_PAUSED:I = 0x2

.field public static final SURFACE_STATE_UNCREATED:I = 0x1


# virtual methods
.method public abstract hasSurface()Z
.end method

.method public abstract updateSurfaceState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation
.end method

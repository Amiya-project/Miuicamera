.class public Lcom/android/camera/effect/framework/gles/PbufferSurface;
.super Lcom/android/camera/effect/framework/gles/EglSurfaceBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/framework/gles/EglCore;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglCore"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;-><init>(Lcom/android/camera/effect/framework/gles/EglCore;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/effect/framework/gles/EglCore;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eglCore",
            "width",
            "height"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;-><init>(Lcom/android/camera/effect/framework/gles/EglCore;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->createPbufferSurface(II)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->releaseEglSurface()V

    return-void
.end method

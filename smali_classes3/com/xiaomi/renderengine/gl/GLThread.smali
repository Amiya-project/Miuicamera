.class public Lcom/xiaomi/renderengine/gl/GLThread;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "GLThread"


# instance fields
.field private mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

.field private mEglOffscreenSurface:Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

.field private mGlHandler:Landroid/os/Handler;

.field private mGlHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x2L
            to = 0x3L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "version"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x2L
            to = 0x3L
        .end annotation
    .end param
    .param p3    # Landroid/opengl/EGLContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "name",
            "version",
            "sharedContext",
            "configAttrs"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new Instance with thread id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " name:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GLThread"

    invoke-static {v0, p1}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance v0, LOooO0OO/OooOO0/OooO0oO/oo0o0Oo/OooO0O0;

    invoke-direct {v0, p0, p2, p3, p4}, LOooO0OO/OooOO0/OooO0oO/oo0o0Oo/OooO0O0;-><init>(Lcom/xiaomi/renderengine/gl/GLThread;ILandroid/opengl/EGLContext;[I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/opengl/EGLContext;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/opengl/EGLContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "sharedContext"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    return-void
.end method

.method private synthetic lambda$new$0(ILandroid/opengl/EGLContext;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "version",
            "sharedContext",
            "configAttrs"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    const-string v1, "new egl Instance"

    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/renderengine/gl/EglCore;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/renderengine/gl/EglCore;-><init>(ILandroid/opengl/EGLContext;[I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/GLThread;->onGLThreadPrepared()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$release$1()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglOffscreenSurface:Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->release()Z

    iput-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglOffscreenSurface:Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglCore;->release()V

    iput-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    const-string p0, "GLThread"

    const-string v0, "mEglOffscreenSurface and mEglCore release done"

    invoke-static {p0, v0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(ILandroid/opengl/EGLContext;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/renderengine/gl/GLThread;->lambda$new$0(ILandroid/opengl/EGLContext;[I)V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/renderengine/gl/GLThread;->lambda$release$1()V

    return-void
.end method

.method public getEglCore()Lcom/xiaomi/renderengine/gl/EglCore;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHandler to do some thing on egl thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/LogRE;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getmEglOffscreenSurface()Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglOffscreenSurface:Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

    return-object p0
.end method

.method public onGLThreadPrepared()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    const-string v1, "EGL_KHR_surfaceless_context"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/gl/EglCore;->supports([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;-><init>(Lcom/xiaomi/renderengine/gl/EglCore;II)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglOffscreenSurface:Lcom/xiaomi/renderengine/gl/EglOffscreenSurface;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/EglSurfaceBase;->makeCurrent()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/gl/EglCore;->makeCurrentSurfaceless()Z

    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release with thread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    new-instance v2, LOooO0OO/OooOO0/OooO0oO/oo0o0Oo/OooO00o;

    invoke-direct {v2, p0}, LOooO0OO/OooOO0/OooO0oO/oo0o0Oo/OooO00o;-><init>(Lcom/xiaomi/renderengine/gl/GLThread;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/xiaomi/renderengine/gl/GLThread;->mGlHandler:Landroid/os/Handler;

    const-string p0, "release done"

    invoke-static {v1, p0}, Lcom/xiaomi/renderengine/log/LogRE;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/android/camera/module/impl/component/MiLiveRecorder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;
.implements Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;,
        Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioPath:Ljava/lang/String;

.field private mBitrate:I

.field private mCameraNotifier:Lcom/xiaomi/recordmediaprocess/EffectCameraNotifier;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCurSpeed:F

.field private mDebugFrameBuffer:[I

.field private final mDrawExtTexAttributes:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private final mDump:Z

.field private mFilterBitmapPath:Ljava/lang/String;

.field private mFps:I

.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

.field private mHandler:Landroid/os/Handler;

.field private volatile mLiveState:I

.field private mMaxDuration:J

.field private mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

.field private mOpenGlRender:Lcom/xiaomi/recordmediaprocess/OpenGlRender;

.field private mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

.field private mSegments:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mStateListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

.field private final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mVideoHeight:I

.field private mVideoSaveDirPath:Ljava/lang/String;

.field private mVideoWidth:I


# direct methods
.method private constructor <init>(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiLiveRecorder@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDebugFrameBuffer:[I

    new-instance v3, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;

    invoke-direct {v3, p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V

    iput-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCameraNotifier:Lcom/xiaomi/recordmediaprocess/EffectCameraNotifier;

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v3}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDrawExtTexAttributes:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const-string v3, "camera.debug.dump_milive"

    invoke-static {v3, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDump:Z

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$000(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Lcom/android/camera/ActivityBase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$100(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mBitrate:I

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$200(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFps:I

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$300(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$400(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$500(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$600(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$700(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$700(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p1, v1

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    const-string v2, "MiLiveRecorder dump:{%s} mSegments:{%s}"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/module/MiLiveModule;->loadLibs(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;->getInstance()Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    invoke-virtual {p1}, Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;->incrementHeldObj()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;Lcom/android/camera/module/impl/component/MiLiveRecorder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->releaseBuffer()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/module/impl/component/MiLiveRecorder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    return p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/module/impl/component/MiLiveRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->resetToPreview()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    return p0
.end method

.method private clearAllSegments()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dump(IIJII)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "type",
            "time",
            "width",
            "height"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDump:Z

    if-eqz v2, :cond_6

    sget-boolean v2, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooO0oO:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x1

    const/16 v3, 0xde1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const v5, 0x8d65

    if-eq v1, v5, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    instance-of v1, v1, Lcom/android/camera/effect/framework/gles/FullFramenOESTexture;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/camera/effect/framework/gles/FullFramenOESTexture;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/gles/FullFramenOESTexture;-><init>()V

    iput-object v1, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    move/from16 v5, p5

    move/from16 v1, p6

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    instance-of v1, v1, Lcom/android/camera/effect/framework/gles/FullFrameTexture;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/camera/effect/framework/gles/FullFrameTexture;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/gles/FullFrameTexture;-><init>()V

    iput-object v1, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    move/from16 v1, p5

    move/from16 v5, p6

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_3
    move/from16 v1, p5

    move/from16 v5, p6

    :goto_1
    const v6, 0x8d40

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/gl/MIGL;->glGenTextures(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v14, 0x1401

    const/4 v15, 0x0

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget-object v7, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDebugFrameBuffer:[I

    iget-object v8, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    invoke-static {v8}, Lcom/xiaomi/gl/MIGL;->glGenFramebuffers(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v4

    iget-object v7, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDebugFrameBuffer:[I

    aget v7, v7, v4

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v7, 0x8ce0

    invoke-static {v6, v7, v3, v2, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_4
    sget-object v2, Lcom/android/camera/module/impl/component/FileUtils;->VIDEO_DUMP:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->hasDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    :cond_5
    iget-object v3, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDebugFrameBuffer:[I

    aget v3, v3, v4

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v4, v4, v1, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v3, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    move/from16 v7, p1

    invoke-virtual {v3, v7}, Lcom/android/camera/effect/framework/gles/FrameTexture;->draw(I)V

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dump.jpg"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dump "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4, v4, v1, v5, v2}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->dumpToJpg(IIIILjava/lang/String;)Ljava/nio/ByteBuffer;

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_6
    :goto_2
    return-void
.end method

.method private getNextAudioPos()J
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getNextPos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liveState"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "RECORDING_ERROR"

    return-object p0

    :pswitch_1
    const-string p0, "RECORDING_DONE"

    return-object p0

    :pswitch_2
    const-string p0, "PENDING_RESUME_RECORDING"

    return-object p0

    :pswitch_3
    const-string p0, "PENDING_PAUSE_RECORDING"

    return-object p0

    :pswitch_4
    const-string p0, "PENDING_STOP_RECORDING"

    return-object p0

    :pswitch_5
    const-string p0, "PENDING_START_RECORDING"

    return-object p0

    :pswitch_6
    const-string p0, "RECORDING_PAUSED"

    return-object p0

    :pswitch_7
    const-string p0, "RECORDING"

    return-object p0

    :pswitch_8
    const-string p0, "PREVIEWING"

    return-object p0

    :pswitch_9
    const-string p0, "IDLE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initMediaCamera()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    const-string v1, "initMediaCamera err"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;->destructMediaEffectCameraSingleton()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    iget v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    iget v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mBitrate:I

    iget v5, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFps:I

    iget-object v6, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCameraNotifier:Lcom/xiaomi/recordmediaprocess/EffectCameraNotifier;

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;->constructMediaEffectCameraSingleton(IIIILcom/xiaomi/recordmediaprocess/EffectCameraNotifier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private releaseBuffer()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->delete()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/gl/MIGL;->glDeleteTexture(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_0
    return-void
.end method

.method private resetToPreview()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    :cond_1
    return-void
.end method

.method private setLiveState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "live state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    invoke-interface {p1, p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;->onStateChange(I)V

    :cond_0
    return-void
.end method

.method private startRecordingTime(Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    mul-float/2addr v0, v1

    float-to-long v8, v0

    new-instance v0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;

    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    mul-float/2addr v2, v1

    float-to-long v5, v2

    move-object v1, v0

    move-object v2, p0

    move-wide v3, v8

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;JJLcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mStartTime:J

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startRecordingTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public deletePreSegment()V
    .locals 6

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(ILjava/util/List;)V

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    sub-long v1, v4, v1

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v3, v1, v2, v4}, Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;->onRecordingTimeUpdate(JF)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePreSegment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePreSegment success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public genInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genInputSurfaceTexture videoRecordTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMiLiveRecordDoneProcessing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getLiveSegments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    return-object p0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mStartTime:J

    return-wide v0
.end method

.method public init(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPreview size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOooO()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->initMediaCamera()V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    return-void
.end method

.method public onSurfaceTextureReleased()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->releaseBuffer()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/FrameTexture;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "attribute"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    check-cast p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v0, p2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDrawExtTexAttributes:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v3, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object p2, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    invoke-virtual {v1, v3, p2, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDrawExtTexAttributes:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineInterface;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/camera/ui/RenderEngineInterface;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    if-eqz v1, :cond_12

    if-eqz v3, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mOpenGlRender:Lcom/xiaomi/recordmediaprocess/OpenGlRender;

    if-nez v1, :cond_6

    new-instance v1, Lcom/xiaomi/recordmediaprocess/OpenGlRender;

    invoke-direct {v1}, Lcom/xiaomi/recordmediaprocess/OpenGlRender;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mOpenGlRender:Lcom/xiaomi/recordmediaprocess/OpenGlRender;

    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eq v1, v3, :cond_8

    :cond_7
    new-instance v1, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mOpenGlRender:Lcom/xiaomi/recordmediaprocess/OpenGlRender;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/recordmediaprocess/OpenGlRender;->SetCurrentGLContext(I)V

    :cond_8
    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x3

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    :cond_a
    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v1, v3, :cond_b

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-ne v1, v4, :cond_11

    :cond_b
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v1, v5, v7}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7, v5, v7}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8, v8, v7}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v1, v5, v7}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOooO()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    goto :goto_4

    :cond_c
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    :goto_4
    instance-of v1, p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    if-eqz v1, :cond_d

    move-object v1, p2

    check-cast v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v5, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ui/RenderEngineInterface;->getPreviewTransform()[F

    move-result-object v5

    iput-object v5, v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    move-object v1, p2

    check-cast v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v5, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v5}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v5

    iput v5, v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mRotation:I

    :cond_d
    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-ne p1, v4, :cond_e

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v6

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/RawTexture;->getTarget()I

    move-result v7

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 v10, p1, 0x4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 v11, p1, 0x4

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->dump(IIJII)V

    goto :goto_5

    :cond_e
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    iget-object p2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p2}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/32 v5, 0xf4240

    div-long/2addr v0, v5

    iget p2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    iget v5, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-virtual {p1, v0, v1, p2, v5}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->NeedProcessTexture(JII)V

    :goto_5
    iget p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-eq p1, v2, :cond_f

    iget p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-ne p1, v4, :cond_10

    :cond_f
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_11
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_12
    :goto_6
    return-void
.end method

.method public pauseRecording()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "pauseRecording"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    invoke-virtual {p0}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->StopRecording()V

    return-void
.end method

.method public release()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;->release()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineInterface;

    move-result-object v0

    new-instance v3, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o00O0OO;

    invoke-direct {v3, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o/OooO00o/o00O0OO;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V

    invoke-interface {v0, v3}, Lcom/android/camera/ui/RenderEngineInterface;->postToGL(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/MiLiveModule;->unloadLibs(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "reset"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    :cond_0
    return-void
.end method

.method public resetVideoSize()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    if-eq v1, v2, :cond_2

    :cond_1
    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    iput v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetVideoSize size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->initMediaCamera()V

    :cond_2
    return-void
.end method

.method public resumeRecording()V
    .locals 14

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeRecording path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mFilterBitmapPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mAudioPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurSpeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",segments = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(ILjava/util/List;)V

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/ILive;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v12, v2

    goto :goto_0

    :cond_1
    move-wide v12, v0

    :goto_0
    iget-object v5, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    iget-object v6, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->getNextAudioPos()J

    move-result-wide v9

    iget v11, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    invoke-virtual/range {v5 .. v13}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->StartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJ)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->startRecordingTime(Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAudioPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    return-void
.end method

.method public setFilterPath(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilterPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    return-void
.end method

.method public setMaxDuration(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxDuration"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->SetOrientation(I)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    return-void
.end method

.method public startRecording()V
    .locals 12

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecording path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mFilterBitmapPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mAudioPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurSpeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(ILjava/util/List;)V

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    const-wide/16 v7, 0x0

    iget v9, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    iget-wide v10, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    invoke-virtual/range {v3 .. v11}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->StartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJ)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->startRecordingTime(Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopRecording"

    invoke-static {v0, v2}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/android/camera/module/impl/component/MediaEffectCameraSingleton;

    invoke-virtual {p0}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->StopRecording()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->resetToPreview()V

    :goto_0
    return-void
.end method

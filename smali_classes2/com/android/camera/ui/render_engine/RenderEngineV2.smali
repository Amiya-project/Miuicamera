.class public Lcom/android/camera/ui/render_engine/RenderEngineV2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/ui/RenderEngineInterface;


# annotations
.annotation build Lcom/android/camera/jacoco/JacocoIgnore;
    ignore = false
    key = "isSupportRenderEngineV2"
    type = 0x0
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderEngineV2"


# instance fields
.field private mActivity:Lcom/android/camera/Camera;

.field private mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mExtRenderer:Lcom/android/camera/ui/render_engine/ExtRendererV2;

.field private mExternalGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

.field private mIsScreenshotAnim:Z

.field private mNailListener:Lcom/android/camera/ui/render_engine/NailListenerV1;

.field private mPreviewSaveListener:Lcom/android/camera/ui/render_engine/PreviewSaveListener;

.field private mPreviewSize:Landroid/util/Size;

.field private mPureSurface:Landroid/view/Surface;

.field private mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

.field private mRenderListener:Lcom/android/camera/ui/render_engine/RenderListenerV1;

.field private mRequestRenderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/CameraScreenNail$RequestRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingLock:Ljava/lang/Object;

.field private mStateListener:Lcom/android/camera/ui/render_engine/StateListenerV2;

.field private mSurfaceListener:Lcom/android/camera/ui/render_engine/SurfaceViewListener;

.field private mSurfaceSize:Landroid/util/Size;

.field private mV2ExtTex:Lcom/android/gallery3d/ui/ExtTexture;

.field private mV2GLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

.field private mV2NeedFinallyTexture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Size;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSize:Landroid/util/Size;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSettingLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSurfaceSize:Landroid/util/Size;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRequestRenderListeners:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mActivity:Lcom/android/camera/Camera;

    new-instance v0, Lcom/xiaomi/renderengine/RenderEngine;

    invoke-direct {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    new-instance p1, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {p1, v1}, Lcom/android/gallery3d/ui/ExtTexture;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2ExtTex:Lcom/android/gallery3d/ui/ExtTexture;

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "RenderEngineV2"

    const-string v0, "Created"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isGPUNotRequired()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPureSurfaceView"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isGPUNotRequired()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onDestroy$4()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2GLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SimpleGLCanvas;->deleteProgram()V

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2GLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->setV2GLCanvas(Lcom/android/gallery3d/ui/SimpleGLCanvas;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSurfaceChanged$2(Lcom/android/camera/ui/render_engine/SurfaceViewListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/ui/render_engine/SurfaceViewListener;->onSurfaceChanged(II)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureUpdated$5()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2GLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getTranslateX()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/SurfaceTextureScreenNail;->getTranslateY()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/SurfaceTextureScreenNail;->getTranslateX()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v4}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v4}, Lcom/android/camera/SurfaceTextureScreenNail;->getTranslateY()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v5}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/RenderEngine;->getFinalEffectTexture()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2NeedFinallyTexture:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(ILandroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getPreviewTransform()[F

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2GLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getSurfaceTextureMgr()Lcom/android/camera/module/common/ISurfaceTextureMgr;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2GLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    invoke-interface {v0, p0, v2}, Lcom/android/camera/module/common/ISurfaceTextureMgr;->onSurfaceTextureUpdated(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setAnimationTypeForPure$1(Landroid/graphics/Bitmap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "mLastPreviewBitmap",
            "copyResult"
        }
    .end annotation

    const-string v0, "RenderEngineV2"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "setAnimationTypeForPure failed. because pixel copy fail!"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-static {v3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    invoke-static {v3, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-static {v3, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-virtual {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    move v5, v1

    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/camera/ActivityBase;->showBlurCoverForSwitch(Landroid/graphics/Bitmap;)V

    add-int/lit8 v5, v5, 0x1

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onPixelCopyFinished result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setColorSpace$0(Lcom/xiaomi/renderengine/ColorSpace$Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "csd"
        }
    .end annotation

    iget-object v0, p1, Lcom/xiaomi/renderengine/ColorSpace$Description;->textureColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->setTextureColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V

    iget-object p1, p1, Lcom/xiaomi/renderengine/ColorSpace$Description;->displayColorSpace:Lcom/xiaomi/renderengine/ColorSpace;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->setDisplayColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V

    return-void
.end method

.method private synthetic lambda$setSurfaceViewListener$3(Lcom/android/camera/ui/render_engine/SurfaceViewListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSurfaceSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/ui/render_engine/SurfaceViewListener;->onSurfaceChanged(II)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->lambda$onDestroy$4()V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/ui/render_engine/SurfaceViewListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->lambda$onSurfaceChanged$2(Lcom/android/camera/ui/render_engine/SurfaceViewListener;)V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->lambda$onSurfaceTextureUpdated$5()V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->lambda$setAnimationTypeForPure$1(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public synthetic OooO0o(Lcom/android/camera/ui/render_engine/SurfaceViewListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->lambda$setSurfaceViewListener$3(Lcom/android/camera/ui/render_engine/SurfaceViewListener;)V

    return-void
.end method

.method public synthetic OooO0o0(Lcom/xiaomi/renderengine/ColorSpace$Description;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->lambda$setColorSpace$0(Lcom/xiaomi/renderengine/ColorSpace$Description;)V

    return-void
.end method

.method public addExtraRenderer(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/xiaomi/renderengine/RenderConstant$ExtraRendererType;
        .end annotation
    .end param
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportRenderEngineV2"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->addExtraRenderer(I)V

    return-void
.end method

.method public addGlobalRenderer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->addGlobalRenderer(I)V

    return-void
.end method

.method public addLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/renderengine/RenderEngine;->addLocalRenderer(IZ)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p0

    return-object p0
.end method

.method public addLocalRendererToHead(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/renderengine/RenderEngine;->addLocalRenderer(IZ)Lcom/xiaomi/renderengine/renderer/Renderer;

    return-void
.end method

.method public addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestRenderListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getSettingLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getRequestRenderListeners()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public clearAnimation()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/renderengine/RenderEngine;->setAnimationType(I)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "RenderEngineV2"

    const-string v1, "clearAnimation"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getActivity()Lcom/android/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method public getAnimationResult(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnimationResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RenderEngineV2"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->getAnimationResult(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object p0
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public getEGLContext14()Landroid/opengl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getPreviewOesTexture()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2ExtTex:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ExtTexture;->setId(I)V

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2ExtTex:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2ExtTex:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/RenderEngine;->getTextureColorSpace()Lcom/xiaomi/renderengine/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ExtTexture;->setColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2ExtTex:Lcom/android/gallery3d/ui/ExtTexture;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "RenderEngineV2"

    const-string v1, "getExtTexture fail, ExtTexture not available"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getExternalGLThread()Lcom/xiaomi/renderengine/gl/GLThread;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mExternalGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/renderengine/gl/GLThread;

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v1

    const-string v2, "ExternalGLThread"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;Landroid/opengl/EGLContext;)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mExternalGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mExternalGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    return-object p0
.end method

.method public getFrameAvailableFlag()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->getFrameAvailableFlag()Z

    move-result p0

    return p0
.end method

.method public getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2GLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    return-object p0
.end method

.method public getPreviewSaveListener()Lcom/android/camera/ui/render_engine/PreviewSaveListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSaveListener:Lcom/android/camera/ui/render_engine/PreviewSaveListener;

    return-object p0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->isGPUNotRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPureSurface:Landroid/view/Surface;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPreviewTransform()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->getPreviewTransform()[F

    move-result-object p0

    return-object p0
.end method

.method public getRenderLock()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->getRenderLock()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRequestRenderListeners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraScreenNail$RequestRenderListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRequestRenderListeners:Ljava/util/List;

    return-object p0
.end method

.method public getSettingLock()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSettingLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method public initCameraScreenNail()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mNailListener:Lcom/android/camera/ui/render_engine/NailListenerV1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/ui/render_engine/NailListenerV1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/render_engine/NailListenerV1;-><init>(Lcom/android/camera/ui/RenderEngineInterface;)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mNailListener:Lcom/android/camera/ui/render_engine/NailListenerV1;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderListener:Lcom/android/camera/ui/render_engine/RenderListenerV1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/ui/render_engine/RenderListenerV1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/render_engine/RenderListenerV1;-><init>(Lcom/android/camera/ui/RenderEngineInterface;)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderListener:Lcom/android/camera/ui/render_engine/RenderListenerV1;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/camera/CameraScreenNail;

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mNailListener:Lcom/android/camera/ui/render_engine/NailListenerV1;

    iget-object v2, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderListener:Lcom/android/camera/ui/render_engine/RenderListenerV1;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$NailListener;Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mStateListener:Lcom/android/camera/ui/render_engine/StateListenerV2;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/camera/ui/render_engine/StateListenerV2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/render_engine/StateListenerV2;-><init>(Lcom/android/camera/ui/render_engine/RenderEngineV2;)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mStateListener:Lcom/android/camera/ui/render_engine/StateListenerV2;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mExtRenderer:Lcom/android/camera/ui/render_engine/ExtRendererV2;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/camera/ui/render_engine/ExtRendererV2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/render_engine/ExtRendererV2;-><init>(Lcom/android/camera/ui/RenderEngineInterface;)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mExtRenderer:Lcom/android/camera/ui/render_engine/ExtRendererV2;

    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mStateListener:Lcom/android/camera/ui/render_engine/StateListenerV2;

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->setStateChangeListener(Lcom/xiaomi/renderengine/StateCallback;)V

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    new-instance v1, Lcom/android/camera/ui/render_engine/RenderListenerV2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/render_engine/RenderListenerV2;-><init>(Lcom/android/camera/ui/render_engine/RenderEngineV2;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->setRequestRenderListener(Lcom/xiaomi/renderengine/RequestRenderListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    :cond_6
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "RenderEngineV2"

    const-string v1, "initCameraScreenNail"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isFirstFrameDrawn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->isFirstFrameDrawn()Z

    move-result p0

    return p0
.end method

.method public isScreenshotAnim()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mIsScreenshotAnim:Z

    return p0
.end method

.method public needFinallyTexture(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNeeded"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2NeedFinallyTexture:Z

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RenderEngineV2"

    const-string v3, "onDestroy start"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/RenderEngine;->makeInvalid()V

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    new-instance v3, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/Oooo000;

    invoke-direct {v3, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/Oooo000;-><init>(Lcom/android/camera/ui/render_engine/RenderEngineV2;)V

    invoke-virtual {v1, v3}, Lcom/xiaomi/renderengine/RenderEngine;->postToGL(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaomi/renderengine/RenderEngine;->setRequestRenderListener(Lcom/xiaomi/renderengine/RequestRenderListener;)V

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/RenderEngine;->release()V

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mExternalGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/gl/GLThread;->release()V

    iput-object v3, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mExternalGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "onDestroy end"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RenderEngineV2"

    const-string v3, "onPause start"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onSurfaceViewPause()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/RenderEngine;->releaseRendererSurface()V

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "onPause end"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RenderEngineV2"

    const-string v3, "onResume start"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onSurfaceViewResume()V

    :cond_1
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "onResume end"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/renderengine/RenderEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;II)V

    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSurfaceSize:Landroid/util/Size;

    iget-object p1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSurfaceListener:Lcom/android/camera/ui/render_engine/SurfaceViewListener;

    if-eqz p1, :cond_0

    new-instance p2, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooOOO;

    invoke-direct {p2, p0, p1}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooOOO;-><init>(Lcom/android/camera/ui/render_engine/RenderEngineV2;Lcom/android/camera/ui/render_engine/SurfaceViewListener;)V

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->postToGL(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onSurfaceCreated()V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onSurfaceDestroyed()V

    return-void
.end method

.method public onSurfaceTextureUpdated()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooOOOO;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooOOOO;-><init>(Lcom/android/camera/ui/render_engine/RenderEngineV2;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->postToGL(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postToGL(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->postToGL(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postToGLAndWait(Lcom/xiaomi/gl/BlockingRunnable;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "timeout"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/renderengine/RenderEngine;->postToGLAndWait(Lcom/xiaomi/gl/BlockingRunnable;J)Z

    move-result p0

    return p0
.end method

.method public releaseCameraScreenNail()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RenderEngineV2"

    const-string v3, "releaseCameraScreenNail"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v1}, Lcom/xiaomi/renderengine/RenderEngine;->onCameraClosed()V

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFrameAvailable(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mNailListener:Lcom/android/camera/ui/render_engine/NailListenerV1;

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderListener:Lcom/android/camera/ui/render_engine/RenderListenerV1;

    return-void
.end method

.method public removeExtraRenderer(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/xiaomi/renderengine/RenderConstant$ExtraRendererType;
        .end annotation
    .end param
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportRenderEngineV2"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->removeExtraRenderer(I)V

    return-void
.end method

.method public removeGlobalRenderer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->removeGlobalRenderer(I)V

    return-void
.end method

.method public removeLocalRenderer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->removeLocalRenderer(I)V

    return-void
.end method

.method public removeRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestRenderListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->removeRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getSettingLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getRequestRenderListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getRequestRenderListeners()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setExternalRenderer(Lcom/xiaomi/renderengine/ExternalRenderer;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public varargs requestReadPixels(I[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "args"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/xiaomi/renderengine/RenderEngine;->requestScreenshot(IZI)V

    goto :goto_0

    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mIsScreenshotAnim:Z

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move v1, v0

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/renderengine/RenderEngine;->requestScreenshot(IZI)V

    :goto_0
    return-void
.end method

.method public requestRender()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->requestExtRender()V

    return-void
.end method

.method public resetFrameAvailableFlag()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0}, Lcom/xiaomi/renderengine/RenderEngine;->resetFrameAvailableFlag()V

    return-void
.end method

.method public setAnimationType(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "ext"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setAnimationType(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAnimationType: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "RenderEngineV2"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimationTypeForPure(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getGLHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000oo()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OoO00O()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPureSurface:Landroid/view/Surface;

    :goto_0
    new-instance v3, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooOo;

    invoke-direct {v3, p0, v1}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooOo;-><init>(Lcom/android/camera/ui/render_engine/RenderEngineV2;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v1, v3, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimationTypeForPure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mPureSurface:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPureSurface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "RenderEngineV2"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCameraPreviewRect(Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setPreviewDisplayArea(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/SurfaceTextureScreenNail;->setDisplayArea(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    return-void
.end method

.method public setColorSpace(Lcom/xiaomi/renderengine/ColorSpace$Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "csd"
        }
    .end annotation

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/Oooo0;

    invoke-direct {v0, p0, p1}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/Oooo0;-><init>(Lcom/android/camera/ui/render_engine/RenderEngineV2;Lcom/xiaomi/renderengine/ColorSpace$Description;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->postToGL(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisplayColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dpyColorSpace"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2: setDisplayColorSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RenderEngineV2"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setDisplayColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V

    return-void
.end method

.method public setDrawPreview(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDrawPreview"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    iput-boolean p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mIsDrawPreview:Z

    return-void
.end method

.method public setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extFrameProcessor"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mExtRenderer:Lcom/android/camera/ui/render_engine/ExtRendererV2;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/renderengine/RenderEngine;->setExternalRenderer(Lcom/xiaomi/renderengine/ExternalRenderer;)V

    return-void
.end method

.method public setPictureAnimationTypeForPure(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->showBlurCoverForCapture(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setPreviewSaveListener(Lcom/android/camera/ui/render_engine/PreviewSaveListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSaveListener:Lcom/android/camera/ui/render_engine/PreviewSaveListener;

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "previewWidth",
            "previewHeight"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->setPreviewSize(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    :cond_0
    if-le p1, p2, :cond_1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSize:Landroid/util/Size;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPreviewSize:Landroid/util/Size;

    :goto_0
    return-void
.end method

.method public setPureSurface(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mPureSurface:Landroid/view/Surface;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPureSurface\uff1a "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "RenderEngineV2"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs setRendererAttribute(I[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rendererType",
            "data"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    const/16 v0, 0x66

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    new-array p0, v4, [Ljava/lang/Object;

    const-string p1, "RenderEngineV2"

    const-string p2, "setRendererAttribute fail, unsupported type"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;

    invoke-direct {v0, p1}, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;-><init>(I)V

    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/xiaomi/renderengine/data/KaleidoscopeRendererAttribute;->mKaleidoscopeId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, v0}, Lcom/xiaomi/renderengine/RenderEngine;->setRendererAttribute(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    goto/16 :goto_0

    :cond_1
    aget-object v0, p2, v4

    check-cast v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    new-instance v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    invoke-direct {v1, p1}, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;-><init>(I)V

    iget-object p1, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEffectRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mStartPoint:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEndPoint:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget p1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    iput p1, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mRangeWidth:F

    iget p1, v0, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    iput p1, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mInvertFlag:I

    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mTiltShiftMaskAlpha:F

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->setRendererAttribute(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    invoke-direct {v0, p1}, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;-><init>(I)V

    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimDuration:I

    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimAlphaPercent:F

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, v0}, Lcom/xiaomi/renderengine/RenderEngine;->setRendererAttribute(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    invoke-direct {v2, p1}, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;-><init>(I)V

    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    iput-object p1, v2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mLookupTableName:Ljava/lang/String;

    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mNeedDark:Z

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mLookupTableSize:I

    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v2, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mEffectDegree:I

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, v2}, Lcom/xiaomi/renderengine/RenderEngine;->setRendererAttribute(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;

    invoke-direct {v5, p1}, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;-><init>(I)V

    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    iput-object p1, v5, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mLookupTableName:Ljava/lang/String;

    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v5, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mNeedDark:Z

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v5, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mLookupTableSize:I

    aget-object p1, p2, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v5, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mEffectDegree:I

    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v5, Lcom/xiaomi/renderengine/data/FilterRendererAttribute;->mNeedNoise:Z

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, v5}, Lcom/xiaomi/renderengine/RenderEngine;->setRendererAttribute(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    :goto_0
    return-void
.end method

.method public setRendererEnabled(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "enabled"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/renderengine/RenderEngine;->setRendererEnabled(IZ)V

    return-void
.end method

.method public setStateChangeListener(Lcom/xiaomi/renderengine/StateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setStateChangeListener(Lcom/xiaomi/renderengine/StateCallback;)V

    return-void
.end method

.method public setSurfaceViewListener(Lcom/android/camera/ui/render_engine/SurfaceViewListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooOo00;

    invoke-direct {v0, p0, p1}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0000OOO/OooOo00;-><init>(Lcom/android/camera/ui/render_engine/RenderEngineV2;Lcom/android/camera/ui/render_engine/SurfaceViewListener;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/render_engine/RenderEngineV2;->postToGL(Ljava/lang/Runnable;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mSurfaceListener:Lcom/android/camera/ui/render_engine/SurfaceViewListener;

    return-void
.end method

.method public setTextureColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texColorSpace"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V2: setTextureColorSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RenderEngineV2"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setTextureColorSpace(Lcom/xiaomi/renderengine/ColorSpace;)V

    return-void
.end method

.method public setV2GLCanvas(Lcom/android/gallery3d/ui/SimpleGLCanvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mV2GLCanvas"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/render_engine/RenderEngineV2;->mV2GLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    return-void
.end method

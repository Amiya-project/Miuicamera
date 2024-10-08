.class public Lcom/android/camera/dualvideo/render/MainRenderSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderSource;


# instance fields
.field private mCanDraw:Z

.field private final mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

.field private mTexture:Lcom/android/gallery3d/ui/ExtTexture;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/gallery3d/ui/ExtTexture;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "tex"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    iput-object p2, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-void
.end method


# virtual methods
.method public attachToGL(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    return-void
.end method

.method public canDraw()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    return p0
.end method

.method public getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-object p0
.end method

.method public ismFrameReady()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDualVideoCameraChoose"
        type = 0x0
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public makeDrawable()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDualVideoCameraChoose"
        type = 0x0
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    return-void
.end method

.method public prepare(Landroid/util/Size;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    return-void
.end method

.method public resetStatus()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDualVideoCameraChoose"
        type = 0x0
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    return-void
.end method

.method public setTexture(Lcom/android/gallery3d/ui/ExtTexture;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tex"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-void
.end method

.method public updateTexImage()V
    .locals 0

    return-void
.end method

.class public Lcom/xiaomi/milab/videosdk/XmsSurface;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private isCreated:Z

.field private mHeight:I

.field private mSurface:Landroid/view/Surface;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/milab/videosdk/XmsSurface;->isCreated:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/milab/videosdk/XmsSurface;->isCreated:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/milab/videosdk/XmsSurface;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public isCreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/milab/videosdk/XmsSurface;->isCreated:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/milab/videosdk/XmsSurface;->mSurface:Landroid/view/Surface;

    iput p3, p0, Lcom/xiaomi/milab/videosdk/XmsSurface;->mWidth:I

    iput p4, p0, Lcom/xiaomi/milab/videosdk/XmsSurface;->mHeight:I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/milab/videosdk/XmsSurface;->isCreated:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

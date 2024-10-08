.class public Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;
.super Lcom/android/camera/ui/zoom/ScaleGestureDetector$SimpleOnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyScaleListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyScaleListener"


# instance fields
.field private mZoomScaled:Z

.field private final weakRecognizer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/V6GestureRecognizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recognizer"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoublePointDown()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/IUserEventMgr;->onDoublePointDown()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDoublePointUp()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/IUserEventMgr;->onDoublePointUp()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onScale(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v2

    const/16 v3, 0x9

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/camera/module/common/IUserEventMgr;->onScale(FFF)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    if-nez v0, :cond_3

    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    :cond_3
    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public onScaleBegin(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->onScaleBegin(FF)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public onScaleEnd(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V6GestureRecognizer;

    if-nez p1, :cond_0

    const-string p0, "MyScaleListener"

    const-string p1, "onScaleEnd: recognizer released, returning."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->isRecording()Z

    move-result p0

    const-string v0, "gesture"

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomAdjusted(Ljava/lang/String;Z)V

    :cond_1
    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/IUserEventMgr;->onScaleEnd()V

    :cond_2
    return-void
.end method

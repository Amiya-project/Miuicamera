.class public Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$24;
.super Lcom/facebook/rebound/SimpleSpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initReboundSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$24;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSpring"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$24;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mUpSpring:Lcom/facebook/rebound/Spring;

    sget-object p1, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCameraUpConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {p0, p1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    :cond_0
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSpring"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3ff3333333333333L    # 1.2

    invoke-static/range {v0 .. v9}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float p1, v0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$24;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mCirclePaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    iput-boolean v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;->isInBeautyMode:Z

    iget v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mSrcWidthPercent:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

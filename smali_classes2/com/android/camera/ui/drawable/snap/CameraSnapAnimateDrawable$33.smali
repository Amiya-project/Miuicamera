.class public Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$33;
.super Lmiuix/view/animation/ExponentialEaseOutInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->resetSnapButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

.field public final synthetic val$judgeRoundBottom:Z

.field public final synthetic val$realCameraPaintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Lcom/android/camera/ui/drawable/CameraPaintBase;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$judgeRoundBottom",
            "val$realCameraPaintBase"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$33;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iput-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$33;->val$realCameraPaintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    iput-boolean p3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$33;->val$judgeRoundBottom:Z

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-super {p0, p1}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$33;->val$realCameraPaintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$33;->val$judgeRoundBottom:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$33;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-object v0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->mRoundPaintItem:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->updateValue(F)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$33;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

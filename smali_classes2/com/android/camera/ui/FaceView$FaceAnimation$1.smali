.class public Lcom/android/camera/ui/FaceView$FaceAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FaceView$FaceAnimation;->startFaceAnimWithAssociatedFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FaceView$FaceAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation$1;->this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation$1;->this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;

    iget-object p0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->this$0:Lcom/android/camera/ui/FaceView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation$1;->this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;

    iget-object p1, p1, Lcom/android/camera/ui/FaceView$FaceAnimation;->this$0:Lcom/android/camera/ui/FaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(I)V

    iget-object p0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation$1;->this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Lcom/android/camera/ui/FaceView$FaceAnimation;->access$902(Lcom/android/camera/ui/FaceView$FaceAnimation;F)F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.class public Lcom/android/camera/ui/VideoTagView$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/VideoTagView;->initVideoTagAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/VideoTagView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/VideoTagView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
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

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/VideoTagView;->access$202(Lcom/android/camera/ui/VideoTagView;Z)Z

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-static {p0}, Lcom/android/camera/ui/VideoTagView;->access$300(Lcom/android/camera/ui/VideoTagView;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/VideoTagView;->access$202(Lcom/android/camera/ui/VideoTagView;Z)Z

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView$1;->this$0:Lcom/android/camera/ui/VideoTagView;

    invoke-static {p0}, Lcom/android/camera/ui/VideoTagView;->access$300(Lcom/android/camera/ui/VideoTagView;)V

    return-void
.end method

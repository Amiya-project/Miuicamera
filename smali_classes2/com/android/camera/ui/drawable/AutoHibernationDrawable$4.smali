.class public Lcom/android/camera/ui/drawable/AutoHibernationDrawable$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->startRecordForFastmotion(IFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

.field public final synthetic val$duration:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$duration"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$4;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    iput p2, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$4;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$4;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    iget-boolean v0, p1, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    iget p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$4;->val$duration:I

    int-to-long v0, p0

    const/4 p0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->startRecord(JFZ)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
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

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
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

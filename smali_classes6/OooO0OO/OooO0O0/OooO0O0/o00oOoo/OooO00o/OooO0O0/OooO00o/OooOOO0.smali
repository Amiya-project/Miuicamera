.class public final synthetic LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOOO0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic OooO00o:Landroid/view/View;

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOOO0;->OooO00o:Landroid/view/View;

    iput p2, p0, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOOO0;->OooO0O0:I

    iput p3, p0, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOOO0;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOOO0;->OooO00o:Landroid/view/View;

    iget v1, p0, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOOO0;->OooO0O0:I

    iget p0, p0, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOOO0;->OooO0OO:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTopMenuCV;->lambda$getTopMenuOpenAnimation$0(Landroid/view/View;IILandroid/animation/ValueAnimator;)V

    return-void
.end method

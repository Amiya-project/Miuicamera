.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/ui/MutiStateButton;

.field public final synthetic OooO0O0:F

.field public final synthetic OooO0OO:F

.field public final synthetic OooO0Oo:F

.field public final synthetic OooO0o0:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/MutiStateButton;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO00o:Lcom/android/camera/ui/MutiStateButton;

    iput p2, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO0O0:F

    iput p3, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO0OO:F

    iput p4, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO0Oo:F

    iput p5, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO0o0:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO00o:Lcom/android/camera/ui/MutiStateButton;

    iget v1, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO0O0:F

    iget v2, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO0OO:F

    iget v3, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO0Oo:F

    iget v4, p0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o000OOo;->OooO0o0:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/MutiStateButton;->OooO00o(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

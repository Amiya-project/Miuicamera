.class public Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;
.super Ljava/lang/Object;


# instance fields
.field private final mAnimRect:Landroid/graphics/RectF;

.field private final mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mFaceRect:Landroid/graphics/RectF;

.field public mIsValid:Z

.field private mPreviewSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mAnimRect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mIsValid:Z

    iput-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$1;-><init>(Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$2;-><init>(Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private getFaceRatio()F
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr v1, p0

    int-to-float p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method private isExceedPreviewArea()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->getFaceRatio()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget-object p0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget p0, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, p0, v3}, Landroid/graphics/RectF;->offset(FF)V

    const/high16 p0, -0x3ee00000    # -10.0f

    invoke-virtual {v2, p0, p0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private mapToViewCoord([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faces",
            "activeArraySize"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceRect:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr p1, v0

    new-instance v0, Landroid/util/SizeF;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    invoke-direct {v0, v1, p2}, Landroid/util/SizeF;-><init>(FF)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    neg-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mAnimRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mAnimRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method private needPlay()Z
    .locals 0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFaceBeautyAnimatorPlayed()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startFaceBeautyAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->isExceedPreviewArea()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mIsValid:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->needPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f1100be

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    return-void
.end method

.method private updateViewPosition(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faceAngle"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mAnimRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mAnimRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    neg-int p1, p1

    add-int/lit8 p1, p1, 0x5a

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onUserInteraction()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->needPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mIsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mIsValid:Z

    invoke-static {}, Lcom/android/camera/protocol/protocols/FaceAnimatorListener;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/o000O0O0/OooO0OO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/o000O0O0/OooO0OO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mFaceBeautyLottieView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateFaceInfo([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "faces",
            "activeArraySize",
            "facePose",
            "context"
        }
    .end annotation

    check-cast p4, Lcom/android/camera/ActivityBase;

    invoke-virtual {p4}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/SurfaceTextureScreenNail;->getRenderSize()Landroid/util/Size;

    move-result-object p4

    iput-object p4, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mPreviewSize:Landroid/util/Size;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->mapToViewCoord([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Lcom/android/camera/module/image/facebeautyanim/FacePoseInfo;->getFacePose()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->updateViewPosition(I)V

    invoke-direct {p0}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->startFaceBeautyAnimator()V

    return-void
.end method

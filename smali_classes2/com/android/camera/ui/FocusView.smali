.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$InitRunnable;,
        Lcom/android/camera/ui/FocusView$ExposureViewListener;,
        Lcom/android/camera/ui/FocusView$SetPositionType;,
        Lcom/android/camera/ui/FocusView$CenterFlag;,
        Lcom/android/camera/ui/FocusView$CursorState;,
        Lcom/android/camera/ui/FocusView$ViewState;
    }
.end annotation


# static fields
.field private static final ALPHA_TIMEOUT:I = 0x7d0

.field public static final CENTER_CAPTURE:I = 0x2

.field public static final CENTER_CIRCLE:I = 0x1

.field public static final CENTER_LOCK:I = 0x5

.field public static final CENTER_MOON:I = 0x4

.field public static final CENTER_NONE:I = 0x0

.field public static final CENTER_SUN:I = 0x3

.field public static final CENTER_SUN_2:I = 0x6

.field public static final CURSOR_GATHER:I = 0x1

.field public static final CURSOR_NORMAL:I = 0x0

.field public static final CURSOR_SLIDE_BACK:I = 0x2

.field private static final DISAPPEAR_TIME:I = 0x5dc

.field private static final DRAG_MODE_ADJUST_EV:I = 0x1

.field private static final DRAG_MODE_MOVE_EXPOSURE:I = 0x3

.field private static final DRAG_MODE_MOVE_FOCUS:I = 0x2

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final END_DISAPPEAR_TIMEOUT:I = 0x320

.field private static final F_EV_ADJUST_SPEED_SCALE:F = 5.0f

.field public static final MAX_SLIDE_DISTANCE:I

.field private static final MODE_AUTO:I = 0x0

.field private static final MODE_FLAG_ANY:I = 0x0

.field private static final MODE_FLAG_EXPOSURE:I = 0x2

.field private static final MODE_FLAG_FOCUS:I = 0x1

.field private static final MODE_MANUAL_COMBO:I = 0x1

.field private static final MODE_MANUAL_METERING_ONLY:I = 0x3

.field private static final MODE_MANUAL_SPLIT:I = 0x2

.field private static final MSG_ALPHA:I = 0x8

.field private static final MSG_ANIMATE_EV_CENTER:I = 0x7

.field private static final MSG_FINISH_DISAPPEAR:I = 0x5

.field private static final MSG_RESET_CENTER:I = 0x6

.field private static final MSG_RESET_VIEW:I = 0x9

.field private static final MSG_START_DISAPPEAR:I = 0x4

.field private static final MSG_START_SHOW:I = 0xa

.field public static final NORMAL_CAPTURE:I = 0x0

.field public static final NORMAL_EV:I = 0x1

.field public static final SET_BY_AUTO_DISAPPEAR:I = 0x6

.field public static final SET_BY_AUTO_FOCUS_MOVING:I = 0x3

.field public static final SET_BY_CANCEL_PREVIOUS_FOCUS:I = 0x2

.field public static final SET_BY_CLEAR_VIEW:I = 0x7

.field public static final SET_BY_DEVICE_KEEP_MOVING:I = 0x4

.field public static final SET_BY_INITIALIZE:I = 0x8

.field public static final SET_BY_RESET_CENTER:I = 0x5

.field public static final SET_BY_RESET_TO_FACE_AREA:I = 0x9

.field public static final SET_BY_TOUCH_DOWN:I = 0x1

.field private static final STANDBY_TRANSPARENT_ALPHA:F = 0.4f

.field private static final STATE_CHANGE_TIME:I = 0x1f4

.field private static final STATE_FAIL:I = 0x3

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_START:I = 0x1

.field private static final STATE_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FocusView"

.field private static final TRIANGLE_BASE_DIS:I

.field public static final ZERO_MINUS:I = 0x3

.field public static final ZERO_PLUS:I = 0x4


# instance fields
.field private final MIN_DRAG_DISTANCE:I

.field private mActivity:Lcom/android/camera/Camera;

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mAdjustedDoneTime:J

.field private mBeingDragged:Z

.field private mBeingEvAdjusted:Z

.field private mBottomRelative:I

.field private mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

.field private mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

.field private mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

.field private mCameraPreviewRect:Landroid/graphics/Rect;

.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field private mCenterFlag:I

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDistanceY:I

.field private mCurrentItem:I

.field private mCurrentMinusCircleCenter:I

.field private mCurrentMinusCircleRadius:F

.field private mCurrentMode:I

.field private mCurrentRadius:I

.field private mCurrentRayBottom:I

.field private mCurrentRayHeight:I

.field private mCurrentRayWidth:I

.field private mCurrentViewState:I

.field private mCursorState:I

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDisappearAnimator:Landroid/animation/ValueAnimator;

.field private mDragMode:I

.field private mEVAnimationRatio:F

.field private mEVAnimationStartTime:J

.field private mEVCaptureRatio:F

.field private mEvMapValue:F

.field private mEvValue:F

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mExposureX:I

.field private mExposureY:I

.field private mFailTime:J

.field private mFocusMode:Ljava/lang/String;

.field private mFocusMoving:Z

.field private mFocusX:I

.field private mFocusY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsAnimationEnable:Z

.field private mIsDown:Z

.field private volatile mIsDraw:Z

.field private mIsDrawableInitialized:Z

.field private mIsEvAdjustable:Z

.field private mIsRecording:Z

.field private mIsSplitFocusExposureDown:Z

.field private mIsTouchFocus:Z

.field private mLastItem:I

.field private mLockBodyBitmap:Landroid/graphics/Bitmap;

.field private mLockExposureBitmap:Landroid/graphics/Bitmap;

.field private mLockFocusBitmap:Landroid/graphics/Bitmap;

.field private mLockHeadBitmap:Landroid/graphics/Bitmap;

.field private mMode:I

.field private mRotation:I

.field private mScrollDistanceY:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mUserVisibleRect:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x42dc999a    # 110.3f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const-string v1, "auto"

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mFocusMode:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mEvMapValue:F

    new-instance v3, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    new-instance v3, Lcom/android/camera/ui/FocusView$3;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/FocusView$3;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-object v3, p1

    check-cast v3, Lcom/android/camera/Camera;

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v3, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v3, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v4, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    const v3, 0x7f0800ca

    invoke-static {p1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v3, p2, p2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const v3, 0x7f08063c

    invoke-static {p1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v3, p2, p2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v3}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    new-instance v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView;->mLockHeadBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/camera/ui/FocusView;->mLockBodyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setLockIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v3, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-direct {v3, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    new-instance v3, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-direct {v3, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5, v1, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setAeAfLockedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/2addr v1, v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "animator_duration_scale"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsAnimationEnable:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FocusView: is global animation available: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsAnimationEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "FocusView"

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance p2, Lcom/android/camera/ui/FocusView$InitRunnable;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/FocusView$InitRunnable;-><init>(Lcom/android/camera/ui/FocusView;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/FocusView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method public static synthetic access$1000(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/camera/ui/FocusView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/camera/ui/FocusView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->startAlphaAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/ui/FocusView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleResetView(I)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/camera/ui/FocusView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleStartShow(I)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->drawableInitialize()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/ui/FocusView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    return-void
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    return p0
.end method

.method public static synthetic access$2400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    return p0
.end method

.method public static synthetic access$2600(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p0
.end method

.method public static synthetic access$2602(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p1
.end method

.method public static synthetic access$2700(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p0
.end method

.method public static synthetic access$2702(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method public static synthetic access$2800()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return v0
.end method

.method public static synthetic access$2902(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return p1
.end method

.method public static synthetic access$3000(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetAlpha()V

    return-void
.end method

.method public static synthetic access$302(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method public static synthetic access$3100(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result p0

    return p0
.end method

.method public static synthetic access$3300(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return p0
.end method

.method public static synthetic access$3400(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method public static synthetic access$3502(Lcom/android/camera/ui/FocusView;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method public static synthetic access$3600(Lcom/android/camera/ui/FocusView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method public static synthetic access$3700(Lcom/android/camera/ui/FocusView;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    return p0
.end method

.method public static synthetic access$402(Lcom/android/camera/ui/FocusView;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetCenter()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/FocusView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/FocusView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p0
.end method

.method public static synthetic access$902(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method private calculateAttribute()V
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelResetCenter()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iput p0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    :cond_3
    return-void
.end method

.method private clearMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private drawableInitialize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDrawableInitialized:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->initialize(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDrawableInitialized:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private focusToCapture()V
    .locals 3

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v1, 0xa3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xba

    if-eq v0, v1, :cond_0

    const/16 v1, 0xbc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/EffectCropViewController;->removeTiltShiftMask()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/RunningState;->impl()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/RunningState;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RunningState;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startCaptureIndicatorAnimation()V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->performFocusShoot()V

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method private getCurrentAngle()I
    .locals 7

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x168

    const/4 v5, 0x0

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, v4

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {p0}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p0

    div-int/2addr v0, p0

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    invoke-static {v0, v5, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v0, p0

    sget p0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v0, v5, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    div-int/lit8 v1, p0, 0x2

    if-lt v0, v1, :cond_2

    div-int/lit8 v1, p0, 0x2

    sub-int/2addr v0, v1

    mul-int/2addr v0, v4

    div-int/2addr p0, v3

    div-int/2addr v0, p0

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    invoke-static {v0, v5, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    :goto_2
    rsub-int v5, p0, 0x168

    goto :goto_3

    :cond_3
    const/16 v3, 0x87

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, 0x43070000    # 135.0f

    if-ne v0, v2, :cond_4

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr p0, v4

    mul-float/2addr p0, v6

    float-to-int p0, p0

    invoke-static {p0, v5, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    goto :goto_3

    :cond_4
    if-ne v0, v1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p0, v1

    mul-float/2addr p0, v4

    sub-float/2addr v0, p0

    mul-float/2addr v0, v6

    float-to-int p0, v0

    invoke-static {p0, v5, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    :cond_5
    :goto_3
    return v5
.end method

.method private getItemByCoordinate()I
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    sget v1, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {p0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method private getItemRatio(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {p0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-ltz v0, :cond_0

    sub-float/2addr p1, p0

    :cond_0
    mul-float/2addr p1, v1

    return p1
.end method

.method private handleResetView(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->reset()V

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    if-ne p1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsAnimationEnable:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;I)V

    invoke-direct {p0, p0, v1}, Lcom/android/camera/ui/FocusView;->startAlphaDisappearAnimation(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/2addr v1, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/2addr v3, v2

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07039d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v9, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetAlpha()V

    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v12, :cond_0

    invoke-direct {p0, v1, v2, v9}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFF)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne p1, v13, :cond_3

    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    :cond_0
    if-ne p1, v13, :cond_3

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v6, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v7, p1

    move-object v3, p0

    move v4, v1

    move v5, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v13, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v6, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v7, p1

    move-object v3, p0

    move v4, v1

    move v5, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_2

    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_0

    :cond_2
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    :cond_3
    :goto_0
    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne p1, v13, :cond_4

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto/16 :goto_5

    :cond_4
    if-ne p1, v10, :cond_11

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v13, :cond_f

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    sub-float/2addr v2, p1

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v3, v13, :cond_6

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v3, p1

    sub-float/2addr v3, v1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    :goto_1
    int-to-float v4, p1

    sub-float/2addr v4, v2

    int-to-float p1, p1

    sub-float/2addr p1, v2

    mul-float/2addr v4, p1

    add-float p1, v3, v4

    goto :goto_2

    :cond_6
    if-ne v3, v10, :cond_7

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v3, p1

    sub-float/2addr v3, v1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    goto :goto_1

    :cond_7
    :goto_2
    iget v3, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_8

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetAlpha()V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    const-wide/16 v4, 0x7d0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v12, :cond_a

    iput v13, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v3, 0xa7

    if-ne p1, v3, :cond_9

    const-string p1, "M_manual_"

    goto :goto_3

    :cond_9
    const-string p1, "M_proVideo_"

    :goto_3
    const-string v3, "metering_focus_split"

    const-string v4, "on"

    invoke-static {p1, v3, v4}, Lcom/android/camera/statistic/MistatsWrapper;->moduleUIClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f07016c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f07017b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_b
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    sub-int/2addr v3, v4

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    int-to-float v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->OUTSIDE_DRAWABLE_HALF_LEN:I

    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v1, v13, :cond_d

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isFocusLocked()Z

    move-result v1

    if-nez v1, :cond_d

    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    float-to-int p1, v0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-nez p1, :cond_c

    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    :cond_c
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1, v13}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setState(I)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setFocusCenter(II)V

    goto :goto_4

    :cond_d
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v1, v10, :cond_e

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isExposureLocked()Z

    move-result v1

    if-nez v1, :cond_e

    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    float-to-int p1, v0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1, v13}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setState(I)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setExposureCenter(II)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateExposureArea()V

    :cond_e
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v12, :cond_11

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne p1, v13, :cond_10

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->isFocusLocked()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateFocusArea()V

    :cond_10
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    iput-boolean v11, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    :cond_11
    :goto_5
    return-void
.end method

.method private handleStartShow(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showTimeout"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FocusView"

    const-string v3, "handleStartShow"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v3, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v2, :cond_1

    invoke-interface {v3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v2}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v1, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v0, v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    :cond_2
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "showStart mExposureViewListener is null "

    invoke-static {v2, v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startTouchDownAnimation()V

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startTouchDownAnimation(I)V

    :cond_3
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O00oO()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v1, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startEvAnimation()V

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    goto :goto_3

    :cond_7
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private initRect()V
    .locals 3

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mUserVisibleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setCenter(II)V

    return-void
.end method

.method private isInInteractable(FFF)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v2, v1

    sub-float/2addr v2, p3

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v3, p0

    sub-float/2addr v3, p3

    int-to-float v1, v1

    add-float/2addr v1, p3

    int-to-float p0, p0

    add-float/2addr p0, p3

    invoke-direct {v0, v2, v3, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method private isInInteractable(FFFFF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "centerX",
            "centerY",
            "r"
        }
    .end annotation

    new-instance p0, Landroid/graphics/RectF;

    sub-float v0, p3, p5

    sub-float v1, p4, p5

    add-float/2addr p3, p5

    add-float/2addr p4, p5

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method private isProMode()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isStableStart()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$performFocusShoot$0(Lcom/android/camera/protocol/protocols/CameraAction;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    const/16 v0, 0x5a

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/protocols/CameraAction;->onShutterButtonClick(I)Z

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$setCurrentItem$1(ILcom/android/camera/protocol/protocols/EvChangedProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "index",
            "p"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mEvMapValue:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvChanged: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FocusView"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-interface {p2, p0, p1}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->onEvChanged(II)V

    return-void
.end method

.method public static synthetic lambda$startAlphaAnimation$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "view",
            "animation"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$startAlphaDisappearAnimation$3(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "view",
            "animation"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private performFocusShoot()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/protocols/RunningState;->impl()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/protocols/RunningState;

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/RunningState;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00OO0O/oo000o;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/oo000o;-><init>(Lcom/android/camera/ui/FocusView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private processParameterIfNeeded(F)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :cond_0
    return-void
.end method

.method private reload()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 0

    return-void
.end method

.method private reset(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is draw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsTouchFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FocusView"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleResetView(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private resetAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private resetCenter()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v0, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v0, v1, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetEvValue()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEvMapValue:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->reset()V

    return-void
.end method

.method private setCenter(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "centerX",
            "centerY"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "animated"
        }
    .end annotation

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->impl()Ljava/util/Optional;

    move-result-object p2

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0ooOOo;

    invoke-direct {v0, p0, p1}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0ooOOo;-><init>(Lcom/android/camera/ui/FocusView;I)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_1
    return-void
.end method

.method private setDraw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draw"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    :cond_2
    return-void
.end method

.method private setTouchDown()V
    .locals 2

    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    return-void
.end method

.method private startAlphaAnimation(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o00oO0o;

    invoke-direct {v0, p1}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o00oO0o;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method private startAlphaDisappearAnimation(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "adapter"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0OOO0o;

    invoke-direct {v1, p1}, LOooO0OO/OooO0O0/OooO00o/o00OO0O/o0OOO0o;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mDisappearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
    .end array-data
.end method

.method private startAnimation()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopEvAdjust()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    invoke-static {}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->onEvChanged(II)V

    :cond_0
    return-void
.end method

.method private threadSafeInvalidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private updateEV()V
    .locals 3

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getExposureCompensationRational(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Rational;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    return-void
.end method

.method private updateExposureArea()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-interface {v0, v1, p0}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->onMeteringAreaChanged(II)V

    :cond_0
    return-void
.end method

.method private updateFocusArea()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FocusView"

    const-string/jumbo v2, "updateFocusArea"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mFocusMode:Ljava/lang/String;

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-interface {v0, v1, p0}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->onFocusAreaChanged(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/protocol/protocols/CameraAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->lambda$performFocusShoot$0(Lcom/android/camera/protocol/protocols/CameraAction;)V

    return-void
.end method

.method public synthetic OooO0O0(ILcom/android/camera/protocol/protocols/EvChangedProtocol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->lambda$setCurrentItem$1(ILcom/android/camera/protocol/protocols/EvChangedProtocol;)V

    return-void
.end method

.method public checkTouchRegionContainSplitFocusExposure(Landroid/view/MotionEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/4 v1, 0x0

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa7

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mUserVisibleRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->getTapableRectWithEdgeSlop(ZLandroid/graphics/Rect;Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07017b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCameraPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07039d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v10, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_6

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne p1, v2, :cond_4

    invoke-direct {p0, v0, v3, v10}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFF)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v7, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v8, p1

    move-object v4, p0

    move v5, v0

    move v6, v3

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFFFF)Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v7, p1

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v8, p1

    move-object v4, p0

    move v5, v0

    move v6, v3

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/FocusView;->isInInteractable(FFFFF)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_7

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public clear(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FocusView"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public getFocusX()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    return p0
.end method

.method public getFocusY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    return p0
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exposureViewListener"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->drawableInitialize()V

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "who"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isEvAdjusted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return p0
.end method

.method public isEvAdjustedTime()Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v5, 0x5dc

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFocusViewMoving()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitFocusExposureDown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsSplitFocusExposureDown:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return p0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->cancelFocusingAnimation()V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isProMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O00oO()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_2
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v3, 0xa7

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_5

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne v2, p1, :cond_7

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackEvAdjusted(F)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_7
    if-nez v0, :cond_8

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz p0, :cond_9

    :cond_8
    move v1, v3

    :cond_9
    :goto_0
    return v1
.end method

.method public processingFinish()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    return-void
.end method

.method public processingStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsRecording:Z

    return-void
.end method

.method public reInit()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FocusView"

    const-string v3, "onCameraOpen>>"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->initRect()V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getExposureCompensationRange(Lcom/android/camera2/CameraCapabilities;)Landroid/util/Range;

    move-result-object v1

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    if-eqz v1, :cond_6

    if-ne v1, v3, :cond_2

    goto :goto_3

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    new-instance v5, Lcom/android/camera/ui/FloatSlideAdapter;

    invoke-direct {v5, v3, v1, v4}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraOpen: adapter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FocusView;->setRotation(F)V

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v2, 0xa7

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    :goto_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/FocusView;->setEvAdjust(ZZ)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :cond_5
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    :cond_6
    :goto_3
    return-void
.end method

.method public releaseListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-void
.end method

.method public setEVVisible(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->threadSafeInvalidate()V

    return-void
.end method

.method public setEvAdjust(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adjustable",
            "visible"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_2

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p1, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->threadSafeInvalidate()V

    :cond_2
    return-void
.end method

.method public setEvMappingValue(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapValue"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEvMapValue:F

    return-void
.end method

.method public setFocusType(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTouchFocus"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "animation"
        }
    .end annotation

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:I

    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setOrientation(I)V

    iget-object p2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setOrientation(I)V

    iget-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "x",
            "y"
        }
    .end annotation

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput p3, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setCenter(II)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/4 p3, 0x5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    const/16 v2, 0xa7

    if-eq p2, v2, :cond_2

    const/16 v2, 0xb4

    if-eq p2, v2, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastMotionModule()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oO0()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->impl2()Lcom/android/camera/protocol/protocols/EvChangedProtocol;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/EvChangedProtocol;->resetEvValue()V

    :cond_2
    :goto_0
    iget p2, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz p2, :cond_3

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    :cond_3
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isProMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->setRotatingDegree(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->setRotatingDegree(F)V

    :goto_0
    return-void
.end method

.method public showFail()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isProMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startFocusFailAnimation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusFailAnimation()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFail, mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FocusView"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->threadSafeInvalidate()V

    :cond_1
    return-void
.end method

.method public showStart(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showTimeout"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showStart -> timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FocusView"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    add-int/lit16 p1, p1, 0xc8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleStartShow(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public showSuccess()V
    .locals 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FocusView"

    const-string v3, "showSuccess"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    invoke-direct {p0, v6}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x320

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v1, v3, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v1, :cond_2

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "needExposurePresenter"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v1

    const/16 v2, 0xb4

    const/16 v7, 0xa7

    if-eqz v1, :cond_3

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    const/4 v1, 0x0

    const-string v4, "3A_Locked"

    const-string v8, "CENTER_LOCK"

    invoke-static {v4, v8, v1}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    if-eq v1, v7, :cond_6

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v1

    if-eqz v1, :cond_5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->focusToCapture()V

    goto :goto_2

    :cond_5
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_2

    :cond_6
    :goto_1
    iput v6, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    :cond_7
    :goto_2
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    if-eq v1, v2, :cond_b

    if-ne v1, v7, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O00oO()Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    move v6, v0

    :goto_3
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v6, :cond_a

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    if-eqz v6, :cond_d

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startEvAnimation()V

    goto :goto_6

    :cond_b
    :goto_5
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v6, :cond_c

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    goto :goto_6

    :cond_c
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-ne v0, v5, :cond_d

    iput v6, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    iget-boolean p0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v1, v0, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    :cond_d
    :goto_6
    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusMode"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mFocusMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusSplitAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusSplitAnimateDrawable;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

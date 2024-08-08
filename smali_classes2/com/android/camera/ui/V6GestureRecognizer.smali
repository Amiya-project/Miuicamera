.class public Lcom/android/camera/ui/V6GestureRecognizer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyScaleGestureDetector;
    }
.end annotation


# static fields
.field public static final GESTURE_EFFECT_CROP_VIEW:I = 0x6

.field public static final GESTURE_EV_ADJUST:I = 0x7

.field public static final GESTURE_HON:I = 0x64

.field public static final GESTURE_NONE:I = 0x0

.field public static final GESTURE_TRACK:I = 0xa

.field public static final GESTURE_VER:I = 0xc8

.field public static final GESTURE_ZOOM:I = 0x9

.field public static final SINGLE_MAX_GESTURE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CameraGestureRecognizer"

.field private static final sOffsetX:F = 18.181818f

.field private static final sOffsetY:F = 29.09091f

.field private static sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;


# instance fields
.field private final MIN_DETECT_DISTANCE:I

.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

.field private mCurrentModule:Lcom/android/camera/module/Module;

.field private mDegree:I

.field private mDistanceX:F

.field private mDistanceY:F

.field private mEdgeGesture:I

.field private mGesture:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureDetectorEnable:Z

.field private mInScaling:Z

.field private final mScaleDetector:Lcom/android/camera/ui/zoom/ScaleGestureDetector;

.field private mScaleDetectorEnable:Z

.field private mScrollDirection:I

.field private mScrolled:Z

.field private mTouchDown:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetectorEnable:Z

    check-cast p1, Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->MIN_DETECT_DISTANCE:I

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    invoke-direct {v1, p1, v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleGestureDetector;

    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    invoke-direct {p1, v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/android/camera/ui/zoom/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Lcom/android/camera/ui/zoom/ScaleGestureDetector;

    new-instance p1, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-direct {p1, p0}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/ui/V6GestureRecognizer;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)Landroid/view/VelocityTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isCurrentModuleAlive()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/V6GestureRecognizer;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/V6GestureRecognizer;IIII)Landroid/graphics/Point;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/V6GestureRecognizer;->getMoveVector(IIII)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->MIN_DETECT_DISTANCE:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/V6GestureRecognizer;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    return p0
.end method

.method public static synthetic access$902(Lcom/android/camera/ui/V6GestureRecognizer;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    return p1
.end method

.method private checkControlView(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;->isAutoZoomViewEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/EffectCropViewController;->isEffectViewVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const v1, 0x7f0a0574

    invoke-interface {v0, v1, p1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/EffectCropViewController;->isEffectViewMoved()Z

    move-result v1

    const/4 v3, 0x6

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/EffectCropViewController;->isEffectViewMoved()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    :cond_2
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isIndicatorVisible(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v1

    const v3, 0x7f0a0576

    invoke-interface {v0, v3, p1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->onViewTouchEvent(ILandroid/view/MotionEvent;)Z

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result p1

    const/4 v0, 0x7

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private couldNotifyGesture(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEdge"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isCurrentModuleAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getActivity()Lcom/android/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-class v0, Lcom/android/camera/ui/V6GestureRecognizer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v1, :cond_0

    invoke-direct {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    if-eq p0, v1, :cond_1

    :cond_0
    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6GestureRecognizer;-><init>(Lcom/android/camera/ActivityBase;)V

    sput-object v1, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    :cond_1
    sget-object p0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMoveVector(IIII)Landroid/graphics/Point;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1x",
            "e1y",
            "e2x",
            "e2y"
        }
    .end annotation

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Point;->y:I

    return-object p0
.end method

.method private isCurrentModuleAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isDeparted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGestureDetecting(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEdge"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    :goto_0
    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isSupportScrollChangeModule()Z
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->impl2()Lcom/android/camera/protocol/protocols/MoreModePopupController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->isExpanded()Z

    move-result v2

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->isSettling()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static onDestroy(Lcom/android/camera/ActivityBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentGesture()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public getGestureOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 p0, p0, 0x64

    mul-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public isGestureDetecting()Z
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 p0, p0, 0x64

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent mGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraGestureRecognizer"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6GestureRecognizer;->setGestureDetectorEnable(Z)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_6

    iput-boolean v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    goto :goto_1

    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_8

    :cond_7
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    :cond_8
    const-string v0, "set to detector"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Lcom/android/camera/ui/zoom/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->checkControlView(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetectorEnable:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_c

    :cond_b
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mInScaling:Z

    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrolled:Z

    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScrollDirection:I

    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceX:F

    iput v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDistanceY:F

    :cond_c
    return v0
.end method

.method public setCurrentModule(Lcom/android/camera/module/Module;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentModule"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCurrentModule:Lcom/android/camera/module/Module;

    return-void
.end method

.method public setDegree(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degree"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mDegree:I

    return-void
.end method

.method public setGesture(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gesture"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return-void
.end method

.method public setGestureDetectorEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetectorEnable:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setGestureDetectorEnable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CameraGestureRecognizer"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setScaleDetectorEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetectorEnable:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScaleDetectorEnable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CameraGestureRecognizer"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

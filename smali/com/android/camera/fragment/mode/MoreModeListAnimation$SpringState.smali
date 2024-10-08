.class public Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mode/MoreModeListAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpringState"
.end annotation


# instance fields
.field private mDragging:Z

.field private mEnterConfig:Lmiuix/animation/base/AnimConfig;

.field private mFollowY:F

.field private mInnerSpringState:Lmiuix/animation/IStateStyle;

.field private mIsStart:Z

.field private mLeadY:F

.field private mListener:Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

.field private mTranX:F

.field private mTranY:F

.field private mUpdateYConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x42480000    # 50.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$1;-><init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mUpdateYConfig:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v1, [F

    const/high16 v3, 0x43fa0000    # 500.0f

    aput v3, v2, v4

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState$2;-><init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mListener:Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mFollowY:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mFollowY:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mTranY:F

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mTranY:F

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mListener:Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mTranX:F

    return p0
.end method

.method public static synthetic access$302(Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mTranX:F

    return p1
.end method


# virtual methods
.method public startEnter()V
    .locals 6

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "from"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v3, "to"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-interface {v3, v4, v5}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v4, v2

    invoke-interface {v3, v0, v1, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpringState{mTranX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mTranX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTranY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mTranY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mLeadY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mLeadY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFollowY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mFollowY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mDragging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mIsStart:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateInnerSpringAnim()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportThemeCV"
        type = 0x0
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mListener:Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->canScrollUp()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mListener:Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mListener:Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    invoke-interface {v0, v2, v2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->onUpdate(FF)V

    iput v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mLeadY:F

    iput v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mFollowY:F

    iput v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mTranY:F

    iput-boolean v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mIsStart:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mDragging:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mInnerSpringState:Lmiuix/animation/IStateStyle;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mListener:Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mListener:Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->canScrollDown()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mIsStart:Z

    const-string v3, "inner_spring"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_2

    iput v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mLeadY:F

    iput v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mFollowY:F

    iput v2, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mTranY:F

    iput-boolean v5, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mDragging:Z

    iput-boolean v5, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mIsStart:Z

    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "spring_view"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-wide/16 v6, 0x1

    invoke-interface {v0, v6, v7}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-string/jumbo v2, "spring_group"

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v1

    iget v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mFollowY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mInnerSpringState:Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mDragging:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mInnerSpringState:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mListener:Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;

    invoke-interface {v1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;->getOverScrollY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v5

    iget-object p0, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$SpringState;->mUpdateYConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v2, v4

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_3
    :goto_0
    return-void
.end method

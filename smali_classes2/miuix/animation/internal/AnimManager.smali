.class public Lmiuix/animation/internal/AnimManager;
.super Ljava/lang/Object;

# interfaces
.implements Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;


# instance fields
.field public final mBeginAnim:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mStartAnim:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mTarget:Lmiuix/animation/IAnimTarget;

.field private mUpdateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lmiuix/animation/property/FloatProperty;",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateTask:Ljava/lang/Runnable;

.field public final mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lmiuix/animation/internal/AnimManager$1;

    invoke-direct {v0, p0}, Lmiuix/animation/internal/AnimManager$1;-><init>(Lmiuix/animation/internal/AnimManager;)V

    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateTask:Ljava/lang/Runnable;

    return-void
.end method

.method private clearRunningInfo()V
    .locals 3

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    sget-object v2, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget v1, v1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private varargs containProperties(Lmiuix/animation/internal/TransitionInfo;[Lmiuix/animation/property/FloatProperty;)Z
    .locals 3

    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Lmiuix/animation/internal/TransitionInfo;->containsProperty(Lmiuix/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private pendState(Lmiuix/animation/internal/TransitionInfo;)Z
    .locals 4

    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    iget-wide v0, v0, Lmiuix/animation/controller/AnimState;->flags:J

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private removeSameAnim(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 6

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/listener/UpdateInfo;

    iget-object v4, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    iget-object v5, v3, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4, v5}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEnd(Lmiuix/animation/internal/TransitionInfo;II)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    iput-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/animation/internal/TransitionInfo;->setupTasks(Z)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private setTargetValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 7

    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p1, v2, v1}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v2

    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object v4, v4, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v4, v4, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/listener/UpdateInfo;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-wide v2, v4, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    :cond_0
    instance-of v4, v1, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    move-object v5, v1

    check-cast v5, Lmiuix/animation/property/IIntValueProperty;

    double-to-int v6, v2

    invoke-virtual {v4, v5, v6}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    double-to-float v5, v2

    invoke-virtual {v4, v1, v5}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    :goto_1
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v4, v1, v2, v3}, Lmiuix/animation/IAnimTarget;->trackVelocity(Lmiuix/animation/property/FloatProperty;D)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/IAnimTarget;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lmiuix/animation/internal/AnimManager;->clearRunningInfo()V

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public getTotalAnimCount()I
    .locals 2

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    invoke-virtual {v1}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getTransitionInfos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;
    .locals 1

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/animation/listener/UpdateInfo;

    invoke-direct {v0, p1}, Lmiuix/animation/listener/UpdateInfo;-><init>(Lmiuix/animation/property/FloatProperty;)V

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/listener/UpdateInfo;

    if-eqz p0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p0

    iget-wide p0, p0, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    return-wide p0
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z
    .locals 3

    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    invoke-direct {p0, v2, p1}, Lmiuix/animation/internal/AnimManager;->containProperties(Lmiuix/animation/internal/TransitionInfo;[Lmiuix/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isAnimSetup()Z
    .locals 1

    sget-object p0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyTransitionEnd(Lmiuix/animation/internal/TransitionInfo;II)V
    .locals 2

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {p0, p2, v0, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->removeRunningInfo(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public removeRunningInfo(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    new-array p1, p1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public runUpdate()V
    .locals 1

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTarget(Lmiuix/animation/IAnimTarget;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    return-void
.end method

.method public setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 5

    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTo, target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "to = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x96

    if-le v0, v1, :cond_1

    sget-object p2, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p2, p0, p1}, Lmiuix/animation/internal/RunnerHandler;->addSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setTargetValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    :goto_0
    return-void
.end method

.method public setVelocity(Lmiuix/animation/property/FloatProperty;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p0

    float-to-double p1, p2

    iput-wide p1, p0, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    return-void
.end method

.method public setupTransition(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 3

    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lmiuix/animation/internal/TransitionInfo;->initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/animation/internal/TransitionInfo;->setupTasks(Z)V

    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimManager;->removeSameAnim(Lmiuix/animation/internal/TransitionInfo;)V

    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v0, v0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sget-object p0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    const/4 v0, 0x4

    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public startAnim(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimManager;->pendState(Lmiuix/animation/internal/TransitionInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".startAnim, pendState"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    const/4 v0, 0x1

    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public update(Z)V
    .locals 0

    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/TargetHandler;->update(Z)V

    return-void
.end method

.class public Lcom/android/camera/protocol/ModeCoordinatorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/ModeCoordinator;


# static fields
.field private static sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;


# instance fields
.field private mHolderKey:I

.field private final protocolMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->protocolMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static create(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holderKey"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->forceDestroy()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    sget-object v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    iput p0, v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->mHolderKey:I

    return-void
.end method

.method public static destroyAll(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holderKey"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->mHolderKey:I

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->destroyWorkspace()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    :cond_1
    :goto_0
    return-void
.end method

.method private destroyWorkspace()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->protocolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static forceDestroy()V
    .locals 1

    sget-object v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->destroyWorkspace()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    return-void
.end method

.method public static getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;
    .locals 2

    sget-object v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/protocol/ModeCoordinatorImpl;

    invoke-direct {v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;-><init>()V

    sput-object v1, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    return-object v0
.end method

.method public static isAlive(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holderKey"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->sInstance:Lcom/android/camera/protocol/ModeCoordinatorImpl;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->mHolderKey:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "newProtocol"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;TP;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->protocolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "baseProtocol"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;TP;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v0

    if-ne v0, p2, :cond_0

    iget-object p0, p0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->protocolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/protocol/ModeCoordinatorImpl;->protocolMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/BaseProtocol;

    return-object p0
.end method

.method public getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)",
            "Ljava/util/Optional<",
            "TP;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(Ljava/lang/Class;)Lcom/android/camera/protocol/BaseProtocol;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/pano/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtomicPanoState"
.end annotation


# instance fields
.field private volatile mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->PREVIEW:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    invoke-direct {p0, v0}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;-><init>(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    return-void
.end method

.method private isValidChange(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule$2;->$SwitchMap$com$android$camera$module$pano$PanoramaModule$PanoState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->INIT:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->DECIDE_DIR:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->SHOOTING:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-eq p1, v2, :cond_2

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->WAITING_STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :pswitch_2
    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->INIT:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object v2, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->DECIDE_DIR:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-eq p1, v2, :cond_4

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->SHOOTING:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->DECIDE_DIR:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-ne p0, p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    return v0

    :pswitch_4
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->INIT:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-ne p0, p1, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    return v0

    :pswitch_5
    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    sget-object p1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->PREVIEW:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-ne p0, p1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get()Lcom/android/camera/module/pano/PanoramaModule$PanoState;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    return-object p0
.end method

.method public set(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    if-eq v0, p1, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->isValidChange(Lcom/android/camera/module/pano/PanoramaModule$PanoState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    const-string p1, "PanoramaModule"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtomicPanoState: pano state changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/pano/PanoramaModule$AtomicPanoState;->mState:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

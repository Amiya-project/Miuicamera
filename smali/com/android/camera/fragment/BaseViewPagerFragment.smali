.class public abstract Lcom/android/camera/fragment/BaseViewPagerFragment;
.super Landroidx/fragment/app/Fragment;

# interfaces
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;


# instance fields
.field private isOnCreate:Z

.field private isViewCreated:Z

.field private isViewCreatedAndVisibleToUser:Z

.field private isVisibleToUser:Z

.field public mCurrentMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private beforeViewGoneToUser()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    return-void
.end method

.method private beforeViewVisibleToUser()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    return-void
.end method


# virtual methods
.method public canProvide()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public isEnableClick()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public needViewClear()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrivedType"
        }
    .end annotation

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataChangeType",
            "currentMode"
        }
    .end annotation

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newMode",
            "animateInElements",
            "themeChangeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    return-void
.end method

.method public onDestroyView()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreated:Z

    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewGoneToUser()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndJumpOut()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->mCurrentMode:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreated:Z

    iget-boolean p2, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isVisibleToUser:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreatedAndJumpOut()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onCreate"
        }
    .end annotation

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newMode",
            "animateInElements",
            "resetType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pendingRotateItems",
            "degree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleToUser"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isVisibleToUser:Z

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isOnCreate:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewVisibleToUser()V

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndVisibleToUser(Z)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->isViewCreatedAndVisibleToUser:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->beforeViewGoneToUser()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onViewCreatedAndJumpOut()V

    :cond_2
    return-void
.end method

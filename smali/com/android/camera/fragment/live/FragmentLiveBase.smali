.class public abstract Lcom/android/camera/fragment/live/FragmentLiveBase;
.super Lcom/android/camera/fragment/BaseFragment;

# interfaces
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;


# instance fields
.field public mIsNeedShowWhenExit:Z

.field public mRemoveFragment:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mIsNeedShowWhenExit:Z

    return-void
.end method

.method public static synthetic lambda$onBackEvent$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mRemoveFragment:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/protocol/protocols/utils/RunningStateUtil;->isNullOrDoingAction()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mIsNeedShowWhenExit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOOoO/o0000O0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOOoO/o0000O0;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mRemoveFragment:Z

    :cond_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0oO()Z

    move-result v0

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb7

    if-ne p0, v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/camera/protocol/protocols/DualController;->impl2()Lcom/android/camera/protocol/protocols/DualController;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/DualController;->showZoomButton()V

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->clearAlertStatus()V

    :cond_3
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callingFrom"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getActiveFragment(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/live/FragmentLiveBase;->mRemoveFragment:Z

    const/16 v2, 0xa

    new-array v3, v0, [I

    invoke-interface {p1, v2, v3}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    const/4 v2, 0x3

    new-array v0, v0, [I

    invoke-interface {p1, v2, v0}, Lcom/android/camera/protocol/protocols/BaseDelegate;->delegateEvent(I[I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOOoO/o000OO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOOoO/o000OO;

    invoke-static {p1, v0}, Lcom/android/camera/animation/FolmeUtils;->animateDeparture(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onAnimationEnd()V

    return v1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onBackEvent(I)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

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

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onBackEvent(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveBase;->onBackEvent(I)Z

    :goto_0
    return-void
.end method

.method public provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastFragmentInfo"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideExitAnimation(I)Landroid/view/animation/Animation;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newFragmentInfo"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

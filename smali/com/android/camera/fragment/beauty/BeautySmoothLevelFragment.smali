.class public Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;


# static fields
.field private static final INTERVAL:I = 0x5


# instance fields
.field private mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

.field private mIsRTL:Z

.field private mSeekBarMaxProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mSeekBarMaxProgress:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)Lcom/android/camera/ui/SeekBarCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->setWatermarkVisible(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mIsRTL:Z

    const v0, 0x7f0a00ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SeekBarCompat;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mSeekBarMaxProgress:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getHalJsonBeautyData()Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;

    move-result-object v0

    const-string/jumbo v1, "pref_beautify_skin_smooth_ratio_key"

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getHalJsonBeautyData()Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/constant/BeautyConstant;->getDefaultValueByKey(Ljava/lang/String;Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;)I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mDegree:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->isSupportSlideViewShowValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SeekBarCompat;->setSupportShowValue(Z)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080c23

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v2, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mSeekBarMaxProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/SeekBarCompat;->setSeekBarPinProgress(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const v0, 0x7f1206ce

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$onViewCreatedAndJumpOut$1(Lcom/android/camera/protocol/VideoPrompterProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/fragment/videoprompter/TipLocationManager$TipType;->BEAUTY_SMOOTH_BAR:Lcom/android/camera/fragment/videoprompter/TipLocationManager$TipType;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/VideoPrompterProtocol;->onTipRemoved(Lcom/android/camera/fragment/videoprompter/TipLocationManager$TipType;)V

    return-void
.end method

.method private synthetic lambda$onViewCreatedAndVisibleToUser$0(Lcom/android/camera/protocol/VideoPrompterProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/fragment/videoprompter/TipLocationManager$TipType;->BEAUTY_SMOOTH_BAR:Lcom/android/camera/fragment/videoprompter/TipLocationManager$TipType;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070990

    invoke-static {v1}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/VideoPrompterProtocol;->onTipAdded(Lcom/android/camera/fragment/videoprompter/TipLocationManager$TipType;I)V

    return-void
.end method

.method private setWatermarkVisible(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/fragment/BaseViewPagerFragment;->mCurrentMode:I

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->needMoveUp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->impl2()Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/AIWaterMarkProtocol;->setWatermarkVisible(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/protocol/VideoPrompterProtocol;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->lambda$onViewCreatedAndVisibleToUser$0(Lcom/android/camera/protocol/VideoPrompterProtocol;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0d0062

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/SeekBarCompat;->clean()V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseViewPagerFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreatedAndJumpOut()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndJumpOut()V

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-static {}, Lcom/android/camera/protocol/VideoPrompterProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooOOO0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooOOO0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onCreate"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndVisibleToUser(Z)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-static {}, Lcom/android/camera/protocol/VideoPrompterProtocol;->impl()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooOO0O;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooOO0O;-><init>(Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pendingRotateItems",
            "newDegree"
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

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideRotateItem(Ljava/util/List;I)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BeautySmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mDegree:I

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    :cond_0
    return-void
.end method

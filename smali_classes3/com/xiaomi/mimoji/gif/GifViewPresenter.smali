.class public Lcom/xiaomi/mimoji/gif/GifViewPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final GIF_EDIT_HIDE:I = 0xca

.field public static final GIF_EDIT_SHOW:I = 0x12f

.field public static final TAG:Ljava/lang/String; = "MIMOJI_GifViewPresenter"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mGifMediaPlayer:Lcom/xiaomi/mimoji/gif/GifMediaPlayer;

.field public mIsAccelerateOpen:Z

.field public mIsClearBgOpen:Z

.field public mIsReverseOpen:Z

.field private mLlAccelerate:Landroid/widget/LinearLayout;

.field private mLlAccelerate2:Landroid/widget/LinearLayout;

.field private mLlClearBg:Landroid/widget/LinearLayout;

.field private mLlReverse:Landroid/widget/LinearLayout;

.field private mLlReverse2:Landroid/widget/LinearLayout;

.field private mLlThreeButton:Landroid/widget/LinearLayout;

.field private mLlTwoButton:Landroid/widget/LinearLayout;

.field private mRlGifBottomOperate:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsClearBgOpen:Z

    iput-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    iput-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsReverseOpen:Z

    iput-object p1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private doAccelerateGif()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/xiaomi/mimoji/gif/GifMediaPlayer;

    iget-boolean p0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    invoke-virtual {v0, p0}, Lcom/xiaomi/mimoji/gif/GifMediaPlayer;->enableSpeedFilter(Z)V

    return-void
.end method

.method private doClearGifBackgroud()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/xiaomi/mimoji/gif/GifMediaPlayer;

    iget-boolean p0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsClearBgOpen:Z

    invoke-virtual {v0, p0}, Lcom/xiaomi/mimoji/gif/GifMediaPlayer;->enableVideoSegmentFilter(Z)V

    return-void
.end method

.method private doReverseGif()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/xiaomi/mimoji/gif/GifMediaPlayer;

    iget-boolean p0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsReverseOpen:Z

    invoke-virtual {v0, p0}, Lcom/xiaomi/mimoji/gif/GifMediaPlayer;->enableReverseFilter(Z)V

    return-void
.end method

.method private initGifView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f0a0451

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a044e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a02f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlThreeButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlTwoButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x5

    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->updateOperateState()V

    return-void
.end method

.method public static synthetic lambda$onClick$0(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "v"
        }
    .end annotation

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->initGifView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/xiaomi/mimoji/gif/GifMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/gif/GifMediaPlayer;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/xiaomi/mimoji/gif/GifMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/gif/GifMediaPlayer;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MIMOJI_GifViewPresenter"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "onClick reverse"

    invoke-static {v2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsReverseOpen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsReverseOpen:Z

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->updateOperateState()V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->doReverseGif()V

    const-string p0, "mimoji_gif_reverse"

    invoke-static {v1, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "onClick clear bg"

    invoke-static {v2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsClearBgOpen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsClearBgOpen:Z

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->updateOperateState()V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->doClearGifBackgroud()V

    const-string p0, "mimoji_gif_remove_background"

    invoke-static {v1, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "onClick accelerate"

    invoke-static {v2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->updateOperateState()V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->doAccelerateGif()V

    const-string p0, "mimoji_gif_speed"

    invoke-static {v1, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, LOooO0OO/OooOO0/OooO0Oo/OooO0O0/o0ooOOo;

    invoke-direct {p0, p1}, LOooO0OO/OooOO0/OooO0Oo/OooO0O0/o0ooOOo;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a02ea -> :sswitch_2
        0x7f0a02eb -> :sswitch_2
        0x7f0a02f0 -> :sswitch_1
        0x7f0a02f7 -> :sswitch_0
        0x7f0a02f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public operateGifPannelVisibleState(I)V
    .locals 1
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

    const/16 v0, 0xca

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setGifMediaPlayer(Lcom/xiaomi/mimoji/gif/GifMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gifMediaPlayer"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mGifMediaPlayer:Lcom/xiaomi/mimoji/gif/GifMediaPlayer;

    return-void
.end method

.method public updateOperateState()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f1200bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsAccelerateOpen:Z

    const v2, 0x7f120568

    const v3, 0x7f08020d

    const v4, 0x7f08020c

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlAccelerate2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mimoji/common/MimojiProcessing;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/mimoji/common/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/xiaomi/mimoji/common/bean/MimojiItem;

    move-result-object v1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOo00o()Z

    move-result v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    check-cast v1, Lcom/xiaomi/mimoji/common/bean/AvatarItem;

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/common/bean/AvatarItem;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_state"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlThreeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlTwoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsClearBgOpen:Z

    const v2, 0x7f120569

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlClearBg:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlThreeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlTwoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-boolean v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mIsReverseOpen:Z

    const v2, 0x7f12056d

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mLlReverse2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifViewPresenter;->mRlGifBottomOperate:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.class public abstract Lmiuix/preference/PreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceFragment$FrameDecoration;,
        Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;
    }
.end annotation


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"


# instance fields
.field private mAdapterInvalid:Z

.field private mConfigChangeUpdateViewEnable:Z

.field private mCurSelectedItem:I

.field private mExtraPaddingEnable:Z

.field private mExtraPaddingHorizontal:I

.field private mExtraPaddingLevel:I

.field private mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

.field private mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

.field private mItemSelectable:Z

.field private mOrientation:I

.field private mScreenHeightDp:I

.field private mScreenWidthDp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingLevel:I

    return-void
.end method

.method public static synthetic access$1000(Lmiuix/preference/PreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    return p0
.end method

.method public static synthetic access$1100(Lmiuix/preference/PreferenceFragment;)I
    .locals 0

    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    return p0
.end method

.method public static synthetic access$700(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/preference/PreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    return p0
.end method

.method private isTabletOrFold()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private notifyExtraPaddingLevelChange()V
    .locals 3

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingLevel:I

    iget v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1, v2, p0}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraHorizontalPaddingLevel(IIZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExtraHorizontalPaddingLevel()I
    .locals 0

    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingLevel:I

    return p0
.end method

.method public isConfigChangeUpdateViewEnable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    return p0
.end method

.method public isHighlightRequested()Z
    .locals 0

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->isHighlightRequested()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mOrientation:I

    if-ne v0, v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p0, Lmiuix/preference/PreferenceFragment;->mScreenWidthDp:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p0, Lmiuix/preference/PreferenceFragment;->mScreenHeightDp:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mOrientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mScreenHeightDp:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->isTabletOrFold()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->initMaskPadding(Landroid/content/Context;)V

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-virtual {v0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateClipPaintColor()V

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->initAttr(Landroid/content/Context;)V

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$100(Lmiuix/preference/PreferenceFragment$FrameDecoration;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$200(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v3

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$300(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v4

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$400(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v5

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$500(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v6

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$600(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/PreferenceGroupAdapter;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lmiuix/preference/PreferenceFragment$2;

    invoke-direct {v3, p0, p1, v1, v0}, Lmiuix/preference/PreferenceFragment$2;-><init>(Lmiuix/preference/PreferenceFragment;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingLevel:I

    invoke-static {p1, v0}, Lmiuix/preference/utils/PreferenceLayoutUtils;->getExtraPaddingByLevel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingLevel:I

    iget-boolean v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraHorizontalPaddingLevel(IIZZ)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isConfigChangeUpdateViewEnable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mOrientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mScreenHeightDp:I

    return-void
.end method

.method public final onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 8

    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingLevel:I

    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    iget-boolean v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraHorizontalPaddingLevel(IIZ)V

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$100(Lmiuix/preference/PreferenceFragment$FrameDecoration;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$200(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v3

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$300(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v4

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$400(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v5

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$500(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v6

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$600(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/PreferenceGroupAdapter;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    return-object p0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    sget p3, Lmiuix/preference/R$layout;->miuix_preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    instance-of p3, p1, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p3, Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, p0, v0, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$1;)V

    iput-object p3, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    instance-of p0, p2, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p0, :cond_1

    check-cast p2, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    :cond_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getExtraHorizontalPaddingLevel()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {p0, v1, v2}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPaddingLevel(IZ)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    if-eq v0, v1, :cond_1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget v2, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->stopHighlight()V

    return-void
.end method

.method public requestHighlight(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lmiuix/preference/PreferenceFragment$1;

    invoke-direct {v1, p0, p1}, Lmiuix/preference/PreferenceFragment$1;-><init>(Lmiuix/preference/PreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPaddingEnable(ZZ)V

    return-void
.end method

.method public setExtraHorizontalPaddingEnable(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->notifyExtraPaddingLevelChange()V

    :cond_0
    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPaddingLevel(IZ)V

    return-void
.end method

.method public setExtraHorizontalPaddingLevel(IZ)V
    .locals 1

    invoke-static {p1}, Lmiuix/appcompat/internal/util/LayoutUIUtils;->isLevelValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingLevel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingLevel:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/preference/utils/PreferenceLayoutUtils;->getExtraPaddingByLevel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->notifyExtraPaddingLevelChange()V

    :cond_0
    return-void
.end method

.method public setItemSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    return-void
.end method

.method public stopHighlight()V
    .locals 0

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight()V

    :cond_0
    return-void
.end method

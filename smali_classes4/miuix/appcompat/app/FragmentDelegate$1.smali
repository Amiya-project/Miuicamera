.class public Lmiuix/appcompat/app/FragmentDelegate$1;
.super Lmiuix/appcompat/internal/view/SimpleWindowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/FragmentDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/FragmentDelegate;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/FragmentDelegate;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {p0}, Lmiuix/appcompat/internal/view/SimpleWindowCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {p0}, Lmiuix/appcompat/app/FragmentDelegate;->access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {p0, p1}, Lmiuix/appcompat/app/IFragment;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-static {p0}, Lmiuix/appcompat/app/FragmentDelegate;->access$000(Lmiuix/appcompat/app/FragmentDelegate;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {p0, p1}, Lmiuix/appcompat/app/IFragment;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/FragmentDelegate$1;->this$0:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

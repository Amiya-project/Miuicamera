.class public Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionBarAnimationProcessor"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onStop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ActionBarAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    return-void
.end method

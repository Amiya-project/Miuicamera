.class public final Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver$DisposeTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisposeTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver$DisposeTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver$DisposeTask;->this$0:Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn$UnsubscribeObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

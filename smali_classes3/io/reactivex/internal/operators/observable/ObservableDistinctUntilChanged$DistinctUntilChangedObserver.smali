.class public final Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;
.super Lio/reactivex/internal/observers/BasicFuseableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DistinctUntilChangedObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicFuseableObserver<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final comparer:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field

.field public hasValue:Z

.field public final keySelector:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Lio/reactivex/functions/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;TK;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex/Observer;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->keySelector:Lio/reactivex/functions/Function;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->comparer:Lio/reactivex/functions/BiPredicate;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->sourceMode:I

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    if-eqz v1, :cond_3

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object p0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/BasicFuseableObserver;->qs:Lio/reactivex/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->keySelector:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->hasValue:Z

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    return-object v0

    :cond_2
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDistinctUntilChanged$DistinctUntilChangedObserver;->last:Ljava/lang/Object;

    goto :goto_0
.end method

.method public requestFusion(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/BasicFuseableObserver;->transitiveBoundaryFusion(I)I

    move-result p0

    return p0
.end method

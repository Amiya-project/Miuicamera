.class public final Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EqualCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55bcb3aaa8a061f8L


# instance fields
.field public final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public volatile cancelled:Z

.field public final comparer:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field public final first:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field public final second:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;ILio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    const/4 p1, 0x2

    new-array p3, p1, [Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    new-instance p4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V

    aput-object p4, p3, p5

    new-instance p4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V

    aput-object p4, p3, p5

    new-instance p2, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-direct {p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    return-void
.end method


# virtual methods
.method public cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    aget-object p0, p0, v0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 12

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v5, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    move v6, v4

    :cond_1
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void

    :cond_2
    iget-boolean v7, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->done:Z

    if-eqz v7, :cond_3

    iget-object v8, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->error:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, v8}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    iget-boolean v8, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->done:Z

    if-eqz v8, :cond_4

    iget-object v9, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->error:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, v9}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v9, :cond_5

    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    :cond_5
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v9, :cond_6

    move v9, v4

    goto :goto_0

    :cond_6
    move v9, v1

    :goto_0
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v10, :cond_7

    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    :cond_7
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v10, :cond_8

    move v11, v4

    goto :goto_1

    :cond_8
    move v11, v1

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    if-eq v9, v11, :cond_a

    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_a
    if-nez v9, :cond_c

    if-nez v11, :cond_c

    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_b

    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_b
    const/4 v7, 0x0

    iput-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    iput-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {p0, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_2
    if-nez v9, :cond_d

    if-eqz v11, :cond_1

    :cond_d
    neg-int v6, v6

    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    return p0
.end method

.method public setDisposable(Lio/reactivex/disposables/Disposable;I)Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {p0, p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    move-result p0

    return p0
.end method

.method public subscribe()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p0, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

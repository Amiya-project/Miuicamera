.class public final Lio/reactivex/internal/operators/completable/CompletableNever;
.super Lio/reactivex/Completable;


# static fields
.field public static final INSTANCE:Lio/reactivex/Completable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableNever;

    invoke-direct {v0}, Lio/reactivex/internal/operators/completable/CompletableNever;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/completable/CompletableNever;->INSTANCE:Lio/reactivex/Completable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 0

    sget-object p0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

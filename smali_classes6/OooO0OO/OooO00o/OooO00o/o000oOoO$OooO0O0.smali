.class public LOooO0OO/OooO00o/OooO00o/o000oOoO$OooO0O0;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO00o/OooO00o/o000oOoO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "LOooO0OO/OooO00o/OooO00o/Oooo0<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic o0000o0o:LOooO0OO/OooO00o/OooO00o/o000oOoO;


# direct methods
.method public constructor <init>(LOooO0OO/OooO00o/OooO00o/o000oOoO;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "LOooO0OO/OooO00o/OooO00o/Oooo0<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o000oOoO$OooO0O0;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o000oOoO;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LOooO0OO/OooO00o/OooO00o/o000oOoO$OooO0O0;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o000oOoO;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO0OO/OooO00o/OooO00o/Oooo0;

    invoke-static {v0, v1}, LOooO0OO/OooO00o/OooO00o/o000oOoO;->OooO0Oo(LOooO0OO/OooO00o/OooO00o/o000oOoO;LOooO0OO/OooO00o/OooO00o/Oooo0;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o000oOoO$OooO0O0;->o0000o0o:LOooO0OO/OooO00o/OooO00o/o000oOoO;

    new-instance v1, LOooO0OO/OooO00o/OooO00o/Oooo0;

    invoke-direct {v1, v0}, LOooO0OO/OooO00o/OooO00o/Oooo0;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v1}, LOooO0OO/OooO00o/OooO00o/o000oOoO;->OooO0Oo(LOooO0OO/OooO00o/OooO00o/o000oOoO;LOooO0OO/OooO00o/OooO00o/Oooo0;)V

    :goto_0
    return-void
.end method

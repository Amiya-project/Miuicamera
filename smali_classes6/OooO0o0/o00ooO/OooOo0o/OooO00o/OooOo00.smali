.class public abstract LOooO0o0/o00ooO/OooOo0o/OooO00o/OooOo00;
.super LOooO0o0/o00ooO/OooOo0o/OooO00o/OooOOOO;

# interfaces
.implements LOooO0o0/o00ooOoO/o000O00O/o00000;
.implements LOooO0o0/o00ooO/OooOo0o/OooO00o/Oooo0;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008!\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u00020\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;",
        "Lkotlin/jvm/internal/FunctionBase;",
        "",
        "Lkotlin/coroutines/jvm/internal/SuspendFunction;",
        "arity",
        "",
        "(I)V",
        "completion",
        "Lkotlin/coroutines/Continuation;",
        "(ILkotlin/coroutines/Continuation;)V",
        "getArity",
        "()I",
        "toString",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build LOooO0o0/o0O0ooO;
    version = "1.3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0o0/o00ooO/OooOo0o/OooO00o/OooOOOO;",
        "LOooO0o0/o00ooOoO/o000O00O/o00000<",
        "Ljava/lang/Object;",
        ">;",
        "LOooO0o0/o00ooO/OooOo0o/OooO00o/Oooo0;"
    }
.end annotation


# instance fields
.field private final o0000o:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LOooO0o0/o00ooO/OooOo0o/OooO00o/OooOo00;-><init>(ILOooO0o0/o00ooO/OooO0o;)V

    return-void
.end method

.method public constructor <init>(ILOooO0o0/o00ooO/OooO0o;)V
    .locals 0
    .param p2    # LOooO0o0/o00ooO/OooO0o;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOOO;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LOooO0o0/o00ooO/OooO0o<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, LOooO0o0/o00ooO/OooOo0o/OooO00o/OooOOOO;-><init>(LOooO0o0/o00ooO/OooO0o;)V

    iput p1, p0, LOooO0o0/o00ooO/OooOo0o/OooO00o/OooOo00;->o0000o:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 0

    iget p0, p0, LOooO0o0/o00ooO/OooOo0o/OooO00o/OooOo00;->o0000o:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    invoke-virtual {p0}, LOooO0o0/o00ooO/OooOo0o/OooO00o/OooO00o;->OooOOO0()LOooO0o0/o00ooO/OooO0o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, LOooO0o0/o00ooOoO/o000O00O/o00O00O;->OooOo0o(LOooO0o0/o00ooOoO/o000O00O/o00000;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(this)"

    invoke-static {p0, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, LOooO0o0/o00ooO/OooOo0o/OooO00o/OooO00o;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.class public LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO00o;
.super LOooO0oo/OooO00o/OooO0O0/o000O0/OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOo0O(Ljava/lang/Object;)LOooO0oo/OooO00o/OooO0O0/o000O0/OooOOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0oo/OooO00o/OooO0O0/o000O0/OooOOO0<",
        "TT;TC;TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO0o:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

.field public final synthetic OooO0o0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO00o;->OooO0o:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    iput-object p3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO00o;->OooO0o0:Ljava/lang/Object;

    invoke-direct {p0, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOOO0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;)LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO00o;->OooO0o:LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o$OooO00o;->OooO0o0:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0/OooO00o;->OooOOo(Ljava/lang/Object;Ljava/lang/Object;)LOooO0oo/OooO00o/OooO0O0/o000O0/OooO;

    move-result-object p0

    return-object p0
.end method

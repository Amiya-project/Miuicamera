.class public final LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO$OooO;
.super LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO$OooO00o;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO<",
        "TK;TV;>.OooO00o;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic o0000oOO:LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO;


# direct methods
.method public constructor <init>(LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO;)V
    .locals 0

    iput-object p1, p0, LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO$OooO;->o0000oOO:LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO;

    invoke-direct {p0, p1}, LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO$OooO00o;-><init>(LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOOOO$OooO00o;->OooO00o()LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOo00;

    move-result-object p0

    iget-object p0, p0, LOooO0oO/OooO00o/OooO00o/o0OO00O$OooOo00;->o0000oo0:Ljava/lang/Object;

    return-object p0
.end method

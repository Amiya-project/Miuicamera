.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0OO/OooO00o/OooO0O0/OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OO/OooO00o/OooO0O0/OooO0O0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OO/OooO00o/OooO0O0/OooO0O0;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00O0OO/OooO00o/OooO0O0/OooO0O0;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OO/OooO00o/OooO0O0/OooO0O0;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OO/OooO00o/OooO0O0/OooO0O0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->lambda$getSortModes$1(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

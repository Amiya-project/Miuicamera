.class public final Lw;
.super Lde;

# interfaces
.implements Lei;


# static fields
.field public static final a:Lw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw;

    invoke-direct {v0}, Lw;-><init>()V

    sput-object v0, Lw;->a:Lw;

    const-class v1, Lw;

    invoke-static {v1, v0}, Lde;->OooOOO0(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lde;-><init>()V

    sget-object p0, Leq;->b:Leq;

    return-void
.end method


# virtual methods
.method public final OooO(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    sget-object p0, Lw;->a:Lw;

    return-object p0

    :cond_0
    new-instance p0, Lv;

    invoke-direct {p0}, Lv;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lw;

    invoke-direct {p0}, Lw;-><init>()V

    return-object p0

    :cond_2
    sget-object p0, Lw;->a:Lw;

    const-string p1, "\u0001\u0000"

    invoke-static {p0, p1, p2}, Lde;->OooOO0(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p2

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

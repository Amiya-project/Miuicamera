.class public abstract Ldv;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldv;

.field public static final b:Ldv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldt;

    invoke-direct {v0}, Ldt;-><init>()V

    sput-object v0, Ldv;->a:Ldv;

    new-instance v0, Ldu;

    invoke-direct {v0}, Ldu;-><init>()V

    sput-object v0, Ldv;->b:Ldv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Ljava/lang/Object;J)V
.end method

.method public abstract OooO0O0(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method

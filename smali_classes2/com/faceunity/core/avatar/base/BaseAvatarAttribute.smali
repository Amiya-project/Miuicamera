.class public abstract Lcom/faceunity/core/avatar/base/BaseAvatarAttribute;
.super Ljava/lang/Object;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0003\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\u00020\u00108@@\u0000X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/faceunity/core/avatar/base/BaseAvatarAttribute;",
        "",
        "",
        "hasLoaded",
        "Z",
        "getHasLoaded$lib_core_release",
        "()Z",
        "setHasLoaded$lib_core_release",
        "(Z)V",
        "",
        "mAvatarId",
        "J",
        "getMAvatarId$lib_core_release",
        "()J",
        "setMAvatarId$lib_core_release",
        "(J)V",
        "Lcom/faceunity/core/avatar/control/AvatarController;",
        "mFUAvatarController$delegate",
        "LOooO0o0/o000000O;",
        "getMFUAvatarController$lib_core_release",
        "()Lcom/faceunity/core/avatar/control/AvatarController;",
        "mFUAvatarController",
        "<init>",
        "()V",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private hasLoaded:Z

.field private mAvatarId:J

.field private final mFUAvatarController$delegate:LOooO0o0/o000000O;
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/faceunity/core/avatar/base/BaseAvatarAttribute$mFUAvatarController$2;->INSTANCE:Lcom/faceunity/core/avatar/base/BaseAvatarAttribute$mFUAvatarController$2;

    invoke-static {v0}, LOooO0o0/o00000O0;->OooO0OO(LOooO0o0/o00ooOoO/o000O00/OooO00o;)LOooO0o0/o000000O;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/core/avatar/base/BaseAvatarAttribute;->mFUAvatarController$delegate:LOooO0o0/o000000O;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/faceunity/core/avatar/base/BaseAvatarAttribute;->mAvatarId:J

    return-void
.end method


# virtual methods
.method public final getHasLoaded$lib_core_release()Z
    .locals 0

    iget-boolean p0, p0, Lcom/faceunity/core/avatar/base/BaseAvatarAttribute;->hasLoaded:Z

    return p0
.end method

.method public final getMAvatarId$lib_core_release()J
    .locals 2

    iget-wide v0, p0, Lcom/faceunity/core/avatar/base/BaseAvatarAttribute;->mAvatarId:J

    return-wide v0
.end method

.method public final getMFUAvatarController$lib_core_release()Lcom/faceunity/core/avatar/control/AvatarController;
    .locals 0
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    iget-object p0, p0, Lcom/faceunity/core/avatar/base/BaseAvatarAttribute;->mFUAvatarController$delegate:LOooO0o0/o000000O;

    invoke-interface {p0}, LOooO0o0/o000000O;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/faceunity/core/avatar/control/AvatarController;

    return-object p0
.end method

.method public final setHasLoaded$lib_core_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/faceunity/core/avatar/base/BaseAvatarAttribute;->hasLoaded:Z

    return-void
.end method

.method public final setMAvatarId$lib_core_release(J)V
    .locals 0

    iput-wide p1, p0, Lcom/faceunity/core/avatar/base/BaseAvatarAttribute;->mAvatarId:J

    return-void
.end method

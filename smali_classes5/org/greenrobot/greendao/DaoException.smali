.class public Lorg/greenrobot/greendao/DaoException;
.super Landroid/database/SQLException;


# static fields
.field private static final serialVersionUID:J = -0x5192a0db69eecaf3L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "cause"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/greenrobot/greendao/DaoException;->safeInitCause(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "th"
        }
    .end annotation

    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/DaoException;->safeInitCause(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public safeInitCause(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Could not set initial cause"

    invoke-static {v0, p0}, Lorg/greenrobot/greendao/DaoLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "Initial cause is:"

    invoke-static {p0, p1}, Lorg/greenrobot/greendao/DaoLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

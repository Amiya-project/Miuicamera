.class public Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/android/camera/jacoco/JacocoIgnore;
    ignore = false
    key = "isSuperNightHidlNeedYuv2AlgoEngine"
    type = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskSessionWrapper"
.end annotation


# instance fields
.field private mFormat:Lcom/xiaomi/engine/BufferFormat;

.field private mTaskSession:Lcom/xiaomi/engine/TaskSession;


# direct methods
.method public constructor <init>(Lcom/xiaomi/engine/TaskSession;Lcom/xiaomi/engine/BufferFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "format"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    iput-object p2, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->mFormat:Lcom/xiaomi/engine/BufferFormat;

    return-void
.end method


# virtual methods
.method public getBufferFormat()Lcom/xiaomi/engine/BufferFormat;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->mFormat:Lcom/xiaomi/engine/BufferFormat;

    return-object p0
.end method

.method public getTaskSession()Lcom/xiaomi/engine/TaskSession;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/ImageProcessor$TaskSessionWrapper;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    return-object p0
.end method

.class public Lcom/android/camera/storage/RawImageSaveRequest;
.super Lcom/android/camera/storage/BaseSaveRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/RawImageSaveRequest$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RawImageSaveRequest"


# instance fields
.field private captureResult:Landroid/hardware/camera2/CaptureResult;

.field private captureTime:J

.field private characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private data:[B

.field private dateTaken:J

.field private height:I

.field private orientation:I

.field private size:I

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/storage/BaseSaveRequest;-><init>()V

    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$000(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$100(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->captureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$200(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$300(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->dateTaken:J

    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$400(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$500(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->width:I

    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$600(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->height:I

    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$700(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->orientation:I

    iget-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->size:I

    invoke-static {p1}, Lcom/android/camera/storage/RawImageSaveRequest$Builder;->access$800(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->captureTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/storage/RawImageSaveRequest$Builder;Lcom/android/camera/storage/RawImageSaveRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/storage/RawImageSaveRequest;-><init>(Lcom/android/camera/storage/RawImageSaveRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->size:I

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish()V
    .locals 5

    const-string v0, "RawImageSaveRequest"

    const-string v1, "image save onFinish"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo_capture_total_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/storage/RawImageSaveRequest;->captureTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algo_image_save_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/storage/RawImageSaveRequest;->dateTaken:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shot_2_view_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/camera/storage/RawImageSaveRequest;->captureTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction([Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/RawImageSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/storage/RawImageSaveRequest;->save()V

    iget-object v0, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackImageSaver(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lcom/android/camera/storage/RawImageSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/storage/RawImageSaveRequest;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/storage/RawImageSaveRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v3, p0, Lcom/android/camera/storage/RawImageSaveRequest;->captureResult:Landroid/hardware/camera2/CaptureResult;

    iget-object v4, p0, Lcom/android/camera/storage/RawImageSaveRequest;->data:[B

    iget-wide v5, p0, Lcom/android/camera/storage/RawImageSaveRequest;->dateTaken:J

    iget v7, p0, Lcom/android/camera/storage/RawImageSaveRequest;->width:I

    iget v8, p0, Lcom/android/camera/storage/RawImageSaveRequest;->height:I

    iget v9, p0, Lcom/android/camera/storage/RawImageSaveRequest;->orientation:I

    invoke-static/range {v0 .. v9}, Lcom/android/camera/storage/Storage;->addRawImage(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;[BJIII)Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    return-void
.end method

.method public bridge synthetic setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "context",
            "saverCallback"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/storage/BaseSaveRequest;->setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V

    return-void
.end method

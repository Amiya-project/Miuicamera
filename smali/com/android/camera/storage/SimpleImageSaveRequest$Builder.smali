.class public Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;
.super Lcom/android/camera/storage/ImageSaveRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/SimpleImageSaveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/camera/storage/AbstractSaveRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;->build()Lcom/android/camera/storage/SimpleImageSaveRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/android/camera/storage/ImageSaveRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;->build()Lcom/android/camera/storage/SimpleImageSaveRequest;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/camera/storage/SimpleImageSaveRequest;
    .locals 1

    new-instance v0, Lcom/android/camera/storage/SimpleImageSaveRequest;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/SimpleImageSaveRequest;-><init>(Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;)V

    return-object v0
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public setCaptureResult(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/storage/SimpleImageSaveRequest$Builder;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

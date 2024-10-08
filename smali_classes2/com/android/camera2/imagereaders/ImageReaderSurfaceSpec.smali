.class public Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;
.super Ljava/lang/Object;


# instance fields
.field private isForMTKFusion:Z

.field private isForParallelVT:Z

.field private mAliasIndex:I

.field private mImageReader:Landroid/media/ImageReader;

.field private mIndex:I

.field private mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

.field private needImageReader:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    iput v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->needImageReader:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    iget v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    iget v3, p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    iget v3, p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    iget-boolean v3, p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    iget-object p1, p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {p0, p1}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAliasIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    return p0
.end method

.method public getImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    return p0
.end method

.method public getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    return-object p0
.end method

.method public hashCode()I
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isForMTKFusion()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFusionPhysicalIds"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForMTKFusion:Z

    return p0
.end method

.method public isForParallelVT()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    return p0
.end method

.method public isNeedImageReader()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->needImageReader:Z

    return p0
.end method

.method public setAliasIndex(I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV2Supported"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mAliasIndex:I

    return-void
.end method

.method public setForMTKFusion(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFusionPhysicalIds"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fusion"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForMTKFusion:Z

    return-void
.end method

.method public setForParallelVT(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportParallelCameraDevice"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vt"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForParallelVT:Z

    iput-boolean p1, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    return-void
.end method

.method public setImageReader(Landroid/media/ImageReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageReader"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mIndex:I

    return-void
.end method

.method public setNeedImageReader(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFakeSatV2Supported"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needImageReader"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->needImageReader:Z

    return-void
.end method

.method public setParam(Lcom/xiaomi/protocol/IImageReaderParameterSets;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->mParam:Lcom/xiaomi/protocol/IImageReaderParameterSets;

    return-void
.end method

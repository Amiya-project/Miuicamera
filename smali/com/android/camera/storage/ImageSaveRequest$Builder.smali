.class public Lcom/android/camera/storage/ImageSaveRequest$Builder;
.super Lcom/android/camera/storage/AbstractSaveRequest$Builder;


# annotations
.annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private exif:Lcom/miui/camerainfra/exif/ExifInterface;

.field private finalImage:Z

.field private isParallelProcess:Z

.field private mirror:Z

.field private oldTitle:Ljava/lang/String;

.field private previewThumbnailHash:I

.field private title:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->oldTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Lcom/miui/camerainfra/exif/ExifInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->exif:Lcom/miui/camerainfra/exif/ExifInterface;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->finalImage:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->mirror:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/storage/ImageSaveRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->isParallelProcess:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/storage/ImageSaveRequest$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->previewThumbnailHash:I

    return p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/camera/storage/AbstractSaveRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->build()Lcom/android/camera/storage/ImageSaveRequest;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/camera/storage/ImageSaveRequest;
    .locals 1

    new-instance v0, Lcom/android/camera/storage/ImageSaveRequest;

    invoke-direct {v0, p0}, Lcom/android/camera/storage/ImageSaveRequest;-><init>(Lcom/android/camera/storage/ImageSaveRequest$Builder;)V

    return-object v0
.end method

.method public getExif()Lcom/miui/camerainfra/exif/ExifInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->exif:Lcom/miui/camerainfra/exif/ExifInterface;

    return-object p0
.end method

.method public getOldTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->oldTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviewThumbnailHash()I
    .locals 0

    iget p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->previewThumbnailHash:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public isFinalImage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->finalImage:Z

    return p0
.end method

.method public isMirror()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->mirror:Z

    return p0
.end method

.method public isParallelProcess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->isParallelProcess:Z

    return p0
.end method

.method public setExif(Lcom/miui/camerainfra/exif/ExifInterface;)Lcom/android/camera/storage/ImageSaveRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exif"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->exif:Lcom/miui/camerainfra/exif/ExifInterface;

    return-object p0
.end method

.method public setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finalImage"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->finalImage:Z

    return-object p0
.end method

.method public setMirror(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirror"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->mirror:Z

    return-object p0
.end method

.method public setOldTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldTitle"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->oldTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setParallelProcess(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parallelProcess"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->isParallelProcess:Z

    return-object p0
.end method

.method public setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previewThumbnailHash"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->previewThumbnailHash:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/android/camera/storage/ImageSaveRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder{uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", exif="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->exif:Lcom/miui/camerainfra/exif/ExifInterface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", finalImage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->finalImage:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mirror="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->mirror:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", oldTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->oldTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isParallelProcess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->isParallelProcess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", previewThumbnailHash="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/ImageSaveRequest$Builder;->previewThumbnailHash:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mParallelTaskData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNeedThumbnail="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mNeedThumbnail:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mOrientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mExifInterface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mExifInterface:Lcom/miui/camerainfra/exif/ExifInterface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsHeic="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mIsHeic:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAlgorithmName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

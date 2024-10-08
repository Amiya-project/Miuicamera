.class public Lcom/android/camera/storage/GifSaveRequest;
.super Lcom/android/camera/storage/BaseSaveRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/GifSaveRequest$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifSaveRequest"


# instance fields
.field private dateTaken:J

.field private height:I

.field private mGifPath:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field private orientation:I

.field private title:Ljava/lang/String;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/android/camera/storage/GifSaveRequest$Builder;)V
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

    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$000(Lcom/android/camera/storage/GifSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$100(Lcom/android/camera/storage/GifSaveRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/storage/GifSaveRequest;->dateTaken:J

    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$200(Lcom/android/camera/storage/GifSaveRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/GifSaveRequest;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$300(Lcom/android/camera/storage/GifSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/GifSaveRequest;->width:I

    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$400(Lcom/android/camera/storage/GifSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/GifSaveRequest;->height:I

    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$500(Lcom/android/camera/storage/GifSaveRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/storage/GifSaveRequest;->orientation:I

    invoke-static {p1}, Lcom/android/camera/storage/GifSaveRequest$Builder;->access$600(Lcom/android/camera/storage/GifSaveRequest$Builder;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/storage/GifSaveRequest$Builder;Lcom/android/camera/storage/GifSaveRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/storage/GifSaveRequest;-><init>(Lcom/android/camera/storage/GifSaveRequest$Builder;)V

    return-void
.end method

.method private checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSdcard"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mVideoPath"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/camera/storage/Storage;->isSecondPhoneStorage(Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result p1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    const-string v0, "GifSaveRequest"

    const-string/jumbo v1, "save video: sd card was ejected"

    invoke-static {v0, v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GifSaveRequest"

    const-string/jumbo v2, "onFinish: runnable process finished"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "image save onFinish"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->save()V

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 15

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "GifSaveRequest"

    const-string/jumbo v3, "save gif: start"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/GifSaveRequest;->isFinal()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    iget-object v3, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/storage/GifSaveRequest;->title:Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/camera/storage/GifSaveRequest;->dateTaken:J

    iget v9, p0, Lcom/android/camera/storage/GifSaveRequest;->width:I

    iget v10, p0, Lcom/android/camera/storage/GifSaveRequest;->height:I

    invoke-static/range {v3 .. v10}, Lcom/android/camera/storage/Storage;->addGifToMediaStore(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JII)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save gif: media has been stored, Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", has thumbnail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/camera/storage/GifSaveRequest;->checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    invoke-static {v1, v3, v0}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/Thumbnail;->setIsGif(Z)V

    iget-object v4, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v4, v1, v3}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v3, p0, Lcom/android/camera/storage/GifSaveRequest;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/storage/GifSaveRequest;->title:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v1, v3, v4, v5}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/camera/storage/BaseSaveRequest;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/camera/storage/GifSaveRequest;->mGifPath:Ljava/lang/String;

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZJZZ)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/camera/storage/BaseSaveRequest;->mSaverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {p0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->getAvailableSpace()J

    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "save gif: end"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

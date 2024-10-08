.class public final Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CyclicBuffer"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CyclicBuffer"


# instance fields
.field private final mDataBuffer:[B

.field private final mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

.field private mMetaHead:I

.field private mMetaTail:I

.field private final mPacketFlags:[I

.field private final mPacketLength:[I

.field private final mPacketPtsUs:[J

.field private final mPacketStart:[I


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "desiredMediaFormat",
            "desiredSpanMs"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "The desired MediaFormat must not be null"

    invoke-static {v2, v3}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->assertIllegal(ZLjava/lang/String;)V

    const-string v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "The desired mimeType is not specified"

    invoke-static {v0, v3}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->assertIllegal(ZLjava/lang/String;)V

    const-string v0, "bitrate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v3, p2

    const-wide/16 v5, 0x1f40

    div-long/2addr v3, v5

    long-to-int v3, v3

    new-array v4, v3, [B

    iput-object v4, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    const-string v4, "video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "frame-rate"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-double v4, p1

    goto :goto_2

    :cond_2
    const-string v2, "sample-rate"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    :goto_2
    int-to-double v6, v0

    div-double/2addr v6, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v4

    int-to-double v4, v3

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-int p1, v4

    mul-int/lit8 v0, p1, 0x2

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketFlags:[I

    new-array v2, v0, [J

    iput-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    new-array v2, v0, [Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    iput-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesiredSpan = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", dataBufferSize = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", metaBufferCount = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", estimatedPacketCount = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "CyclicBuffer"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private canAdd(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v1, v1

    if-gt p1, v0, :cond_3

    iget v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iget v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    add-int/2addr v2, v4

    rem-int/2addr v2, v1

    const/4 v5, 0x0

    const-string v6, ")"

    const-string v7, "CyclicBuffer"

    if-ne v2, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ran out of metadata (head="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tail="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->getHeadStart()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    iget v8, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    aget v3, v3, v8

    add-int v8, v3, v0

    sub-int/2addr v8, v2

    rem-int/2addr v8, v0

    const-string v0, " free="

    if-le p1, v8, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ran out of data (tailStart="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " headStart="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " req="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Okay: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " metaFree="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    add-int/2addr p1, v1

    iget p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    sub-int/2addr p1, p0

    rem-int/2addr p1, v1

    sub-int/2addr p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enormous packet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs. buffer "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getHeadStart()I
    .locals 4

    iget v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    rem-int/2addr v0, v3

    aget v2, v2, v0

    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    aget p0, p0, v0

    add-int/2addr v2, p0

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    return v2
.end method

.method private removeTail()V
    .locals 3

    iget v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t removeTail() in empty buffer"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder;->assertIllegal(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v0, v0

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    add-int/2addr v1, v2

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    return-void
.end method


# virtual methods
.method public add(Ljava/nio/ByteBuffer;IJLcom/xiaomi/camera/liveshot/LivePhotoResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "flags",
            "ptsUsec",
            "livePhotoResult"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CyclicBuffer"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->canAdd(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Cached buffer removed from tail"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->removeTail()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    array-length v1, v1

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v3, v3

    invoke-direct {p0}, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->getHeadStart()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketFlags:[I

    iget v6, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    aput p2, v5, v6

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    aput-wide p3, p2, v6

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    aput v4, p2, v6

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    aput v0, p2, v6

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    aput-object p5, p2, v6

    add-int p2, v4, v0

    if-ge p2, v1, :cond_1

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    invoke-virtual {p1, p2, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Split, firstsize="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " size="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    invoke-virtual {p1, p2, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    const/4 p3, 0x0

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_1
    iget p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v3

    iput p1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketFlags:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iput v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    return-void
.end method

.method public computeTimeSpanUsec()J
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v0, v0

    iget v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    iget v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    if-ne v1, v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/2addr v1, v0

    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    aget-wide v0, p0, v1

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getChunk(ILandroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "info"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketLength:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketFlags:[I

    aget v3, v3, p1

    iput v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketPtsUs:[J

    aget-wide v3, v3, p1

    iput-wide v3, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int v3, v1, v2

    const/4 v4, 0x0

    if-gt v3, v0, :cond_0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    invoke-virtual {p1, p0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iput v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    return-object p1

    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    iget-object v5, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    aget p1, v5, p1

    invoke-virtual {v3, v1, p1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mDataBuffer:[B

    sub-int/2addr v2, v0

    invoke-virtual {v3, p0, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iput v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    return-object v3
.end method

.method public getFirstIndex()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaTail:I

    iget p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    if-ne v0, p0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getLivePhotoResult(I)Lcom/xiaomi/camera/liveshot/LivePhotoResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mLivePhotoResults:[Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getNextIndex(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mPacketStart:[I

    array-length v0, v0

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v0

    iget p0, p0, Lcom/xiaomi/camera/liveshot/encoder/CircularMediaEncoder$CyclicBuffer;->mMetaHead:I

    if-ne p1, p0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

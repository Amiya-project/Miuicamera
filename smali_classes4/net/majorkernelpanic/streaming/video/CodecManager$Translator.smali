.class public Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/video/CodecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Translator"
.end annotation


# instance fields
.field private final bufferSize:I

.field private final mOutputColorFormat:I

.field private final mUVSize:I

.field private final mUVStride:I

.field private final mYSize:I

.field private final mYStride:I

.field private final tmp:[B


# direct methods
.method public constructor <init>(III)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputColorFormat",
            "width",
            "height"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mOutputColorFormat:I

    int-to-double p1, p2

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    mul-int/lit8 p1, p1, 0x10

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYStride:I

    div-int/lit8 p2, p1, 0x2

    int-to-double v2, p2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    mul-int/lit8 p2, p2, 0x10

    iput p2, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVStride:I

    mul-int/2addr p1, p3

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYSize:I

    mul-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVSize:I

    mul-int/lit8 p3, p2, 0x2

    add-int/2addr p1, p3

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->bufferSize:I

    mul-int/lit8 p2, p2, 0x2

    new-array p1, p2, [B

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->tmp:[B

    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->bufferSize:I

    return p0
.end method

.method public getUVStride()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVStride:I

    return p0
.end method

.method public getYStride()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYStride:I

    return p0
.end method

.method public translate([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget v0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mOutputColorFormat:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->bufferSize:I

    div-int/lit8 p0, p0, 0x6

    mul-int/lit8 v0, p0, 0x4

    :goto_0
    mul-int/lit8 v1, p0, 0x5

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    add-int v2, v0, p0

    aget-byte v3, p1, v2

    aput-byte v3, p1, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    iget v0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYSize:I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->tmp:[B

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVSize:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget v0, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mUVSize:I

    if-ge v3, v0, :cond_1

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->mYSize:I

    mul-int/lit8 v2, v3, 0x2

    add-int v4, v1, v2

    iget-object v5, p0, Lnet/majorkernelpanic/streaming/video/CodecManager$Translator;->tmp:[B

    add-int/2addr v0, v3

    aget-byte v0, v5, v0

    aput-byte v0, p1, v4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v5, v3

    aput-byte v0, p1, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

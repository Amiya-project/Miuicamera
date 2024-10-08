.class public Lcom/adobe/xmp/impl/ByteBuffer;
.super Ljava/lang/Object;


# instance fields
.field private buffer:[B

.field private encoding:Ljava/lang/String;

.field private length:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    const/16 v0, 0x4000

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    :goto_0
    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ne v1, v0, :cond_0

    add-int/lit16 v2, v2, 0x4000

    invoke-direct {p0, v2}, Lcom/adobe/xmp/impl/ByteBuffer;->ensureCapacity(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    array-length p1, p1

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    array-length v0, p1

    if-gt p2, v0, :cond_0

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iput p2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Valid length exceeds the buffer length."

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Valid length exceeds the buffer length."

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    array-length p0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 3

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public append(Lcom/adobe/xmp/impl/ByteBuffer;)V
    .locals 2

    iget-object v0, p1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget p1, p1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/adobe/xmp/impl/ByteBuffer;->append([BII)V

    return-void
.end method

.method public append([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->append([BII)V

    return-void
.end method

.method public append([BII)V
    .locals 2

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return-void
.end method

.method public byteAt(I)B
    .locals 1

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "The index exceeds the valid buffer area"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public charAt(I)I
    .locals 1

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "The index exceeds the valid buffer area"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    iget p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    if-nez v0, :cond_d

    iget v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    const-string v1, "UTF-8"

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iput-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:[B

    const/4 v4, 0x0

    aget-byte v5, v3, v4

    const-string v6, "UTF-32"

    const/16 v7, 0xfe

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/16 v10, 0xff

    if-nez v5, :cond_4

    if-lt v0, v9, :cond_3

    aget-byte v0, v3, v8

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    aget-byte v0, v3, v2

    and-int/2addr v0, v10

    if-ne v0, v7, :cond_2

    const/4 v0, 0x3

    aget-byte v0, v3, v0

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_2

    const-string v0, "UTF-32BE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_2
    iput-object v6, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_3
    :goto_0
    const-string v0, "UTF-16BE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_4
    aget-byte v5, v3, v4

    and-int/2addr v5, v10

    const/16 v11, 0x80

    if-ge v5, v11, :cond_8

    aget-byte v4, v3, v8

    if-eqz v4, :cond_5

    iput-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-lt v0, v9, :cond_7

    aget-byte v0, v3, v2

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "UTF-32LE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_7
    :goto_1
    const-string v0, "UTF-16LE"

    iput-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_8
    aget-byte v5, v3, v4

    and-int/2addr v5, v10

    const/16 v8, 0xef

    if-ne v5, v8, :cond_9

    iput-object v1, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_9
    aget-byte v1, v3, v4

    and-int/2addr v1, v10

    const-string v4, "UTF-16"

    if-ne v1, v7, :cond_a

    iput-object v4, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_a
    if-lt v0, v9, :cond_c

    aget-byte v0, v3, v2

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    iput-object v6, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    goto :goto_3

    :cond_c
    :goto_2
    iput-object v4, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    :cond_d
    :goto_3
    iget-object p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public length()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    return p0
.end method

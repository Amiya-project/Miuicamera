.class public final Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;


# instance fields
.field private _data:[B

.field private _header:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_header:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->getRecordType()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-short v0, v0

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    array-length p0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_header:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    new-array v1, p3, [B

    iput-object v1, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    add-int/2addr p2, v0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getEndIndex()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->TxInteractiveInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes$Type;

    iget p0, p0, Lorg/apache/poi/hslf/record/RecordTypes$Type;->typeID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getStartIndex()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public setEndIndex(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setStartIndex(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

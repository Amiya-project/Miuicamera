.class public Lcom/android/zxing/PreviewDecodeManager;
.super Ljava/lang/Object;


# static fields
.field public static final DECODE_TYPE_DOCUMENT:I = 0x2

.field public static final DECODE_TYPE_HAND_GESTURE:I = 0x1

.field public static final DECODE_TYPE_OCR:I = 0x3

.field public static final DECODE_TYPE_QR:I

.field private static final INSTANCE:Lcom/android/zxing/PreviewDecodeManager;


# instance fields
.field private final mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/zxing/Decoder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/zxing/PreviewDecodeManager;

    invoke-direct {v0}, Lcom/android/zxing/PreviewDecodeManager;-><init>()V

    sput-object v0, Lcom/android/zxing/PreviewDecodeManager;->INSTANCE:Lcom/android/zxing/PreviewDecodeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    new-instance v0, Lcom/android/zxing/PreviewDecodeManager$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/PreviewDecodeManager$1;-><init>(Lcom/android/zxing/PreviewDecodeManager;)V

    iput-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/zxing/PreviewDecodeManager;)Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    return-object p0
.end method

.method public static getInstance()Lcom/android/zxing/PreviewDecodeManager;
    .locals 1

    sget-object v0, Lcom/android/zxing/PreviewDecodeManager;->INSTANCE:Lcom/android/zxing/PreviewDecodeManager;

    return-object v0
.end method


# virtual methods
.method public getDecoder(I)Lcom/android/zxing/Decoder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/zxing/Decoder;",
            ">(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    return-object p0
.end method

.method public getPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mPreviewCallback:Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    return-object p0
.end method

.method public init(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "decodeType"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v0, Lcom/android/zxing/OCRDecoder;

    invoke-direct {v0}, Lcom/android/zxing/OCRDecoder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/zxing/Decoder;->init(I)V

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/zxing/DocumentDecoder;

    invoke-direct {p2}, Lcom/android/zxing/DocumentDecoder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/zxing/Decoder;->init(I)V

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/zxing/HandGestureDecoder;

    invoke-direct {p2}, Lcom/android/zxing/HandGestureDecoder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/zxing/Decoder;->init(I)V

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/zxing/QRCodeDecoder;

    invoke-direct {p2}, Lcom/android/zxing/QRCodeDecoder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/zxing/Decoder;->init(I)V

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method

.method public load(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "decodeType"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/zxing/PreviewDecodeManager;->init(II)Z

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->startDecode()V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 2

    iget-object v0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/zxing/Decoder;

    invoke-virtual {v1}, Lcom/android/zxing/Decoder;->stopDecode()V

    invoke-virtual {v1}, Lcom/android/zxing/Decoder;->quit()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clear()V

    return-void
.end method

.method public startDecode()V
    .locals 1

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/Decoder;

    invoke-virtual {v0}, Lcom/android/zxing/Decoder;->startDecode()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unload(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodeType"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/zxing/PreviewDecodeManager;->mDecoders:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/zxing/Decoder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/zxing/Decoder;->stopDecode()V

    :cond_0
    return-void
.end method

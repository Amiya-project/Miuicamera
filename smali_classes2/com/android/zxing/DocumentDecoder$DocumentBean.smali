.class public Lcom/android/zxing/DocumentDecoder$DocumentBean;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/DocumentDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentBean"
.end annotation


# instance fields
.field private final mDocEffect:Ljava/lang/String;

.field private final mPoints:[F

.field private final mPreviewImage:Lcom/android/zxing/PreviewImage;


# direct methods
.method public constructor <init>(Lcom/android/zxing/PreviewImage;[FLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "previewImage",
            "points",
            "docEffect"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->mPreviewImage:Lcom/android/zxing/PreviewImage;

    iput-object p2, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->mPoints:[F

    iput-object p3, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->mDocEffect:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocEffect()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->mDocEffect:Ljava/lang/String;

    return-object p0
.end method

.method public getPoints()[F
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->mPoints:[F

    return-object p0
.end method

.method public getPreviewImage()Lcom/android/zxing/PreviewImage;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/DocumentDecoder$DocumentBean;->mPreviewImage:Lcom/android/zxing/PreviewImage;

    return-object p0
.end method

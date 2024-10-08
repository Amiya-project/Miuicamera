.class public Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "jp.wasabeef.glide.transformations.RoundedCornersTransformation.1"

.field private static final VERSION:I = 0x1


# instance fields
.field private cornerType:Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;

.field private diameter:I

.field private margin:I

.field private radius:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radius",
            "margin"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;->ALL:Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;-><init>(IILcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;)V

    return-void
.end method

.method public constructor <init>(IILcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "radius",
            "margin",
            "cornerType"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    iput p1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    iput p2, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    iput-object p3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->cornerType:Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;

    return-void
.end method

.method private drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v4, v3

    sub-float v4, p4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int/2addr p0, v1

    int-to-float p0, p0

    int-to-float v1, v1

    invoke-direct {v0, p0, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    int-to-float v1, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float p0, p0

    int-to-float v1, v1

    sub-float/2addr p4, v1

    invoke-direct {v0, v2, p0, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float p0, p0

    sub-float/2addr p4, p0

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int v5, v1, v4

    int-to-float v5, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    int-to-float v1, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    iget v2, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float p0, p0

    sub-float/2addr p4, p0

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v4, v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v4, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v4, v3

    sub-float v4, p4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v4, v3

    sub-float v4, p3, v4

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int v2, v1, p0

    int-to-float v2, v2

    add-int/2addr v1, p0

    int-to-float p0, v1

    invoke-direct {v0, v2, p0, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int/2addr p0, v1

    int-to-float p0, p0

    int-to-float v1, v1

    invoke-direct {v0, p0, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int/2addr v1, p0

    int-to-float v1, v1

    int-to-float p0, p0

    sub-float/2addr p3, p0

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int v2, v1, p0

    int-to-float v2, v2

    add-int/2addr v1, p0

    int-to-float p0, v1

    invoke-direct {v0, v2, p0, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v3, p0

    sub-float/2addr p3, v3

    int-to-float p0, p0

    sub-float/2addr p4, p0

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int v2, v1, p0

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float p0, p0

    sub-float/2addr p4, p0

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float p0, p0

    sub-float/2addr p3, p0

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "width",
            "height"
        }
    .end annotation

    iget v0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v1, v0

    sub-float/2addr p3, v1

    int-to-float v0, v0

    sub-float/2addr p4, v0

    sget-object v0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$1;->$SwitchMap$com$xiaomi$mimoji$mimojias$utils$RoundedCornersTransformation$CornerType:[I

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->cornerType:Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float p3, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p3, p0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float p3, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p3, p0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int v5, v1, v4

    int-to-float v5, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int v4, v1, v3

    int-to-float v4, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v2, v4, v1, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int/2addr p0, v1

    int-to-float p0, p0

    int-to-float v1, v1

    invoke-direct {v0, p0, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v4, v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-direct {v0, v2, v4, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-direct {v0, v2, v1, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    sub-float v2, p3, v2

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    add-int/2addr p0, v1

    int-to-float p0, p0

    invoke-direct {v0, v2, p0, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "right",
            "bottom"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    int-to-float v2, v1

    iget p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    invoke-direct {v0, v2, p0, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    instance-of v0, p1, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;

    iget v0, p1, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->cornerType:Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->cornerType:Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    mul-int/lit16 v0, v0, 0x2710

    const v1, 0x195894b4

    add-int/2addr v1, v0

    iget v0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    iget v0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->cornerType:Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->diameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->cornerType:Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation$CornerType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pool",
            "toTransform",
            "outWidth",
            "outHeight"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float p2, p3

    int-to-float p3, p4

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/xiaomi/mimoji/mimojias/utils/RoundedCornersTransformation;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageDigest"
        }
    .end annotation

    return-void
.end method

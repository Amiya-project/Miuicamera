.class public Lcom/android/camera/fragment/clone/ClipBox;
.super Ljava/lang/Object;


# instance fields
.field private final mAxisTouchWidth:I

.field private final mAxisWidth:I

.field private final mBgColor:I

.field private mBottom:I

.field private final mCornerRatio:I

.field private mDrawingBottom:I

.field private mDrawingTop:I

.field private final mInnerCornerRatio:I

.field private mLeftAxisLeft:I

.field private mLeftAxisRight:I

.field private final mLineWidth:I

.field private final mPaddingLeft:I

.field private final mPaintNormal:Landroid/graphics/Paint;

.field private final mPointRatio:I

.field private mRightAxisLeft:I

.field private mRightAxisRight:I

.field private final mSemiLineWidth:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I

.field private final mTintText:Ljava/lang/String;

.field private mTop:I

.field private mVisibleAreaLeft:I

.field private mVisibleAreaRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0708c9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLineWidth:I

    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mSemiLineWidth:I

    const v2, 0x7f0708be

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisWidth:I

    const v3, 0x7f0708bd

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisTouchWidth:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaddingLeft:I

    const v0, 0x7f0708c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    const v0, 0x7f0708bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mInnerCornerRatio:I

    const v0, 0x7f0708c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPointRatio:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, 0x7f0603da

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, 0x7f0600ae

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBgColor:I

    const v0, 0x7f120a03

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTintText:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v2, 0x7f0708c3

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string/jumbo v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    const v1, 0x7f0708ca

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextWidth:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaLeft:I

    iget v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTop:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaRight:I

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaddingLeft:I

    add-int/2addr v0, v2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v6, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    sub-int v2, v0, v2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v5, v2

    int-to-float v6, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisRight:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaddingLeft:I

    sub-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v6, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    int-to-float v7, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v3, v0

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v4, v2

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mCornerRatio:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBottom:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTop:I

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisWidth:I

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPointRatio:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisWidth:I

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPointRatio:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextWidth:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTintText:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    iget v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisRight:I

    sub-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaLeft:I

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisWidth:I

    add-int/2addr v0, v2

    iget v3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTop:I

    iget v4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaRight:I

    sub-int/2addr v4, v2

    iget v2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBottom:I

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mInnerCornerRatio:I

    int-to-float v6, v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/camera/fragment/clone/ClipBox;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getClipAxisWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisTouchWidth:I

    return p0
.end method

.method public getLineWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLineWidth:I

    return p0
.end method

.method public setClipBoxLeftAndRight(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lockLeft",
            "lockRight"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mSemiLineWidth:I

    sub-int v1, p1, v0

    iput v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisRight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisLeft:I

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mAxisTouchWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    iget v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaLeft:I

    if-ge p1, v1, :cond_0

    iput v1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mLeftAxisLeft:I

    :cond_0
    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisRight:I

    iget p1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaRight:I

    if-le p2, p1, :cond_1

    iput p1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mRightAxisRight:I

    :cond_1
    return-void
.end method

.method public setVisibleArea(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaLeft:I

    iput p3, p0, Lcom/android/camera/fragment/clone/ClipBox;->mVisibleAreaRight:I

    iput p2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mTop:I

    iput p4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mBottom:I

    iget v0, p0, Lcom/android/camera/fragment/clone/ClipBox;->mSemiLineWidth:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingTop:I

    sub-int/2addr p4, v0

    iput p4, p0, Lcom/android/camera/fragment/clone/ClipBox;->mDrawingBottom:I

    invoke-virtual {p0, p1, p3}, Lcom/android/camera/fragment/clone/ClipBox;->setClipBoxLeftAndRight(II)V

    return-void
.end method

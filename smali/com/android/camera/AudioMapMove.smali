.class public Lcom/android/camera/AudioMapMove;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIM_TIME_ONE:I = 0x96

.field public static final DEFAULT_ANIM_TIME_SECOND:I = 0x50

.field private static final TAG:Ljava/lang/String; = "AudioMapMove"


# instance fields
.field private antiAlias:Z

.field private lastY:F

.field private linearGradientLine:Landroid/graphics/LinearGradient;

.field private linearGradientRect:Landroid/graphics/LinearGradient;

.field private mAnimTimeAudioMap:J

.field private mAnimTimeLine:J

.field private mAnimatorAudioMap:Landroid/animation/ValueAnimator;

.field private mAnimatorLine:Landroid/animation/ValueAnimator;

.field private mAudioMapHeight:F

.field private mDialPaint:Landroid/graphics/Paint;

.field private mEndFirst:F

.field private mEndSecond:F

.field private mFValue:F

.field private mFirstCurrentVolume:F

.field private mFirstLineValue:F

.field private mFirstMaxVolumeValue:F

.field private mFirstRectBottom:F

.field private mFirstRectTop:F

.field private mGradientsColor:I

.field private mGreenColor:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

.field private mOrangeColor:I

.field private mPercentLine:F

.field private mPercentRect:F

.field private mRectLeft:F

.field private mRectWidth:F

.field private mSValue:F

.field private mSecondCurrentVolume:F

.field private mSecondLineValue:F

.field private mSecondMaxVolumeValue:F

.field private mSecondRectBottom:F

.field private mSecondRectTop:F

.field private mStartFirst:F

.field private mStartSecond:F

.field private mYellowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->linearGradientRect:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->linearGradientLine:Landroid/graphics/LinearGradient;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/AudioMapMove;->mStartFirst:F

    iput v0, p0, Lcom/android/camera/AudioMapMove;->mStartSecond:F

    invoke-direct {p0, p1, p2}, Lcom/android/camera/AudioMapMove;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mPercentRect:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mPercentRect:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mFValue:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstLineValue:F

    return p1
.end method

.method public static synthetic access$102(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFValue:F

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mFirstMaxVolumeValue:F

    return p0
.end method

.method public static synthetic access$1202(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondLineValue:F

    return p1
.end method

.method public static synthetic access$1300(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mSecondMaxVolumeValue:F

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mStartFirst:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mEndFirst:F

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mSValue:F

    return p0
.end method

.method public static synthetic access$402(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSValue:F

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mStartSecond:F

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mEndSecond:F

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    return p0
.end method

.method public static synthetic access$702(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    return p1
.end method

.method public static synthetic access$800(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    return p1
.end method

.method public static synthetic access$900(Lcom/android/camera/AudioMapMove;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMapMove;->mPercentLine:F

    return p0
.end method

.method public static synthetic access$902(Lcom/android/camera/AudioMapMove;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mPercentLine:F

    return p1
.end method

.method private drawRectHorizontal(Landroid/graphics/Canvas;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    new-instance v9, Landroid/graphics/LinearGradient;

    iget v5, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mRectWidth:F

    const/4 v10, 0x4

    new-array v6, v10, [I

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mGreenColor:I

    const/4 v11, 0x0

    aput v1, v6, v11

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mGradientsColor:I

    const/4 v12, 0x1

    aput v1, v6, v12

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mYellowColor:I

    const/4 v13, 0x2

    aput v1, v6, v13

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mOrangeColor:I

    const/4 v14, 0x3

    aput v1, v6, v14

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    move-object v1, v9

    move v2, v5

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v9, v0, Lcom/android/camera/AudioMapMove;->linearGradientRect:Landroid/graphics/LinearGradient;

    iget-object v1, v0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    cmpg-float v2, v1, v3

    if-gez v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iput v5, v0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    cmpg-float v2, v1, v3

    if-gez v2, :cond_1

    move v1, v3

    :cond_1
    iput v1, v0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mFirstRectBottom:F

    iget-object v7, v0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mSecondRectTop:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mSecondRectBottom:F

    iget-object v5, v0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mRectWidth:F

    new-array v5, v10, [I

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mGreenColor:I

    aput v6, v5, v11

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mGradientsColor:I

    aput v6, v5, v12

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mYellowColor:I

    aput v6, v5, v13

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mOrangeColor:I

    aput v6, v5, v14

    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v2

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/android/camera/AudioMapMove;->linearGradientLine:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v6, v0, Lcom/android/camera/AudioMapMove;->mFirstLineValue:F

    iget v10, v0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    cmpg-float v1, v6, v10

    if-gtz v1, :cond_2

    iput v10, v0, Lcom/android/camera/AudioMapMove;->mFirstMaxVolumeValue:F

    iget v9, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v11, v0, Lcom/android/camera/AudioMapMove;->mFirstRectBottom:F

    iget-object v12, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v10

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget v5, v0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    iget v7, v0, Lcom/android/camera/AudioMapMove;->mFirstRectBottom:F

    iget-object v8, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    iget v12, v0, Lcom/android/camera/AudioMapMove;->mSecondLineValue:F

    iget v3, v0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    cmpg-float v1, v12, v3

    if-gtz v1, :cond_3

    iput v3, v0, Lcom/android/camera/AudioMapMove;->mSecondMaxVolumeValue:F

    iget v2, v0, Lcom/android/camera/AudioMapMove;->mSecondRectTop:F

    iget v4, v0, Lcom/android/camera/AudioMapMove;->mSecondRectBottom:F

    iget-object v5, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    iget v11, v0, Lcom/android/camera/AudioMapMove;->mSecondRectTop:F

    iget v13, v0, Lcom/android/camera/AudioMapMove;->mSecondRectBottom:F

    iget-object v14, v0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v12

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/camera/AudioMapMove;->initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/camera/AudioMapMove;->initPaint()V

    return-void
.end method

.method private initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/R$styleable;->AudioMap:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/AudioMapMove;->antiAlias:Z

    const/4 p2, 0x3

    const/16 v0, 0x96

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeAudioMap:J

    const/16 v0, 0x50

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeLine:J

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700e5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mAudioMapHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700e4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mRectWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06002b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mGreenColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06002a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mGradientsColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06002e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mYellowColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06002c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mOrangeColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700e8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mFirstRectTop:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0700e0

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mFirstRectBottom:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0700e9

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mSecondRectTop:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0700ea

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mSecondRectBottom:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mFValue:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/AudioMapMove;->mSValue:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/camera/AudioMapMove;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mDialPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/camera/AudioMapMove;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p0, Lcom/android/camera/AudioMapMove;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private startAnimatorAudioMapHorizontal()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeAudioMap:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/AudioMapMove$1;

    invoke-direct {v1, p0}, Lcom/android/camera/AudioMapMove$1;-><init>(Lcom/android/camera/AudioMapMove;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorAudioMap:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimatorLineHorizontal()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/android/camera/AudioMapMove;->mAnimTimeLine:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/AudioMapMove$2;

    invoke-direct {v1, p0}, Lcom/android/camera/AudioMapMove$2;-><init>(Lcom/android/camera/AudioMapMove;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/AudioMapMove;->mAnimatorLine:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/camera/AudioMapMove;->drawRectHorizontal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/camera/AudioMapMove;->lastY:F

    sub-float/2addr v1, v0

    iput v0, p0, Lcom/android/camera/AudioMapMove;->lastY:F

    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

    invoke-interface {v0, v1}, Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;->setVolumeControlValue(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/AudioMapMove;->mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

    invoke-interface {v0}, Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;->setUpAudioMapPressAnimator()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    iput v0, p0, Lcom/android/camera/AudioMapMove;->lastY:F

    iget-object p0, p0, Lcom/android/camera/AudioMapMove;->mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

    invoke-interface {p0}, Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;->setPressAudioMapPressAnimator()V

    return v2
.end method

.method public setOnAudioMapPressAnimatorListener(Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AudioMapMove"

    const-string/jumbo v2, "setOnAudioMapPressAnimatorListener()"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/AudioMapMove;->mOnAudioMapPressAnimatorListener:Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;

    return-void
.end method

.method public setValueHorizontal(FF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mLVolume",
            "mRVolume"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/camera/AudioMapMove;->mAudioMapHeight:F

    const/high16 v2, 0x42000000    # 32.0f

    div-float/2addr v1, v2

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v2, 0x0

    aput p1, v0, v2

    mul-float/2addr p2, v1

    float-to-int p1, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mFValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mStartFirst:F

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mSValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mStartSecond:F

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mRectLeft:F

    aget v1, v0, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    iput v1, p0, Lcom/android/camera/AudioMapMove;->mEndFirst:F

    aget v1, v0, p2

    int-to-float v1, v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mEndSecond:F

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mFirstLineValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstMaxVolumeValue:F

    aget p1, v0, v2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mFirstCurrentVolume:F

    iget p1, p0, Lcom/android/camera/AudioMapMove;->mSecondLineValue:F

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondMaxVolumeValue:F

    aget p1, v0, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/AudioMapMove;->mSecondCurrentVolume:F

    invoke-direct {p0}, Lcom/android/camera/AudioMapMove;->startAnimatorAudioMapHorizontal()V

    invoke-direct {p0}, Lcom/android/camera/AudioMapMove;->startAnimatorLineHorizontal()V

    return-void
.end method

.class public Lcom/xiaomi/mimoji/gif/GifEditLayout;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mimoji/gif/GifEditLayout$GifTextWatcher;
    }
.end annotation


# static fields
.field public static final LIMIT_BYTE:I = 0x10

.field public static final MAX_LINES:I = 0x8

.field public static final TAG:Ljava/lang/String; = "MIMOJI_GifEditLayout"


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

.field private mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

.field private mGifTextWatcher:Lcom/xiaomi/mimoji/gif/GifEditLayout$GifTextWatcher;

.field private mIsAllowInput:Z

.field private mIsShowBorder:Z

.field private mIvBorder:Landroid/widget/FrameLayout;

.field private mIvClear:Landroid/widget/ImageView;

.field private mLastString:Ljava/lang/String;

.field private final mRect:Landroid/graphics/Rect;

.field private stringBuilder:Ljava/lang/StringBuilder;

.field private tf:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;->initVidew()V

    return-void
.end method

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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;->initVidew()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mRect:Landroid/graphics/Rect;

    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mLastString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;->initVidew()V

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/mimoji/gif/GifEditLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIsAllowInput:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/mimoji/gif/GifEditLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mLastString:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/xiaomi/mimoji/gif/GifEditLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mLastString:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/xiaomi/mimoji/gif/GifEditLayout;)Lcom/xiaomi/mimoji/gif/LimitInputEditText;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/mimoji/gif/GifEditLayout;)Lcom/xiaomi/mimoji/gif/AdaptiveEditText;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/mimoji/gif/GifEditLayout;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->stringBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/mimoji/gif/GifEditLayout;C)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mimoji/gif/GifEditLayout;->isDoubleByte(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/mimoji/gif/GifEditLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIsShowBorder:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/xiaomi/mimoji/gif/GifEditLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIsShowBorder:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/xiaomi/mimoji/gif/GifEditLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/xiaomi/mimoji/gif/GifEditLayout;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initEdit()V
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060404

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    iget-object v1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060440

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mGifTextWatcher:Lcom/xiaomi/mimoji/gif/GifEditLayout$GifTextWatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mimoji/gif/GifEditLayout$GifTextWatcher;

    invoke-direct {v0, p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout$GifTextWatcher;-><init>(Lcom/xiaomi/mimoji/gif/GifEditLayout;)V

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mGifTextWatcher:Lcom/xiaomi/mimoji/gif/GifEditLayout$GifTextWatcher;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    iget-object v6, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mGifTextWatcher:Lcom/xiaomi/mimoji/gif/GifEditLayout$GifTextWatcher;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    new-instance v6, Lcom/xiaomi/mimoji/gif/GifEditLayout$1;

    invoke-direct {v6, p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout$1;-><init>(Lcom/xiaomi/mimoji/gif/GifEditLayout;)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lcom/xiaomi/mimoji/gif/GifEditLayout$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout$2;-><init>(Lcom/xiaomi/mimoji/gif/GifEditLayout;)V

    iget-object v6, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    const/4 v7, 0x1

    new-array v8, v7, [Landroid/text/InputFilter;

    aput-object v0, v8, v1

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    iget-object v2, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    const-string v2, "#1F1F1F"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextSize(F)V

    iput-boolean v7, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIsShowBorder:Z

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->stringBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->stringBuilder:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initVidew()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v1, 0x7f0a01bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    iput-object v1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    const v1, 0x7f0a01be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    iput-object v1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/mimoji/common/MimojiHelper;->GIF_PRE_RES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fonts/FZMiaoWuJW.ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getTypefaceFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->tf:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;->setIsAllowInput(Z)V

    invoke-direct {p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;->initEdit()V

    return-void
.end method

.method private isDoubleByte(C)Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    const/4 p0, 0x0

    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    return p0

    :cond_1
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-le p1, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    :cond_3
    return p0
.end method

.method private isShowSoftButtonsBarHeight()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideBorder(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isJustHideSoft"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;->isShowSoftButtonsBarHeight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIsShowBorder:Z

    iget-object p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v0, 0x7f060404

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0285

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtFakeGifWords:Lcom/xiaomi/mimoji/gif/AdaptiveEditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIsAllowInput:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a01bf

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;->showBorder()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setIsAllowInput(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mIsAllowInput"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIsAllowInput:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    return-void
.end method

.method public showBorder()Z
    .locals 5

    iget-boolean v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIsShowBorder:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIsShowBorder:Z

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIvBorder:Landroid/widget/FrameLayout;

    const v3, 0x7f080c27

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mIvClear:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/mimoji/gif/GifEditLayout;->isShowSoftButtonsBarHeight()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p0, p0, Lcom/xiaomi/mimoji/gif/GifEditLayout;->mEtGifWords:Lcom/xiaomi/mimoji/gif/LimitInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return v1
.end method

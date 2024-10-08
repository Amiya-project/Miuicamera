.class public Lmiuix/androidbasewidget/widget/EditText;
.super Landroidx/appcompat/widget/AppCompatEditText;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;
    }
.end annotation


# static fields
.field private static final LEVEL_ERROR:I = 0x194

.field private static final LEVEL_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EditText"


# instance fields
.field private final DEFAULT_TEXT_HANDLE_AND_CURSOR_COLOR:I

.field private isAddListener:Z

.field private mErrorWatcher:Landroid/text/TextWatcher;

.field private mTextHandleAndCursorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;-><init>(Lmiuix/androidbasewidget/widget/EditText;Lmiuix/androidbasewidget/widget/EditText$1;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_handle_and_cursor_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lmiuix/androidbasewidget/widget/EditText;->DEFAULT_TEXT_HANDLE_AND_CURSOR_COLOR:I

    sget-object v1, Lmiuix/androidbasewidget/R$styleable;->EditText:[I

    sget v2, Lmiuix/androidbasewidget/R$style;->Widget_EditText_DayNight:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lmiuix/androidbasewidget/R$styleable;->EditText_textHandleAndCursorColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static synthetic access$100(Lmiuix/androidbasewidget/widget/EditText;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    return p0
.end method

.method public static synthetic access$102(Lmiuix/androidbasewidget/widget/EditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    return p1
.end method

.method public static synthetic access$200(Lmiuix/androidbasewidget/widget/EditText;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private obtainHighlightColor()I
    .locals 3

    iget v0, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget p0, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v2, 0x26

    invoke-static {v2, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/EditText;->obtainHighlightColor()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    iget v6, p0, Lmiuix/androidbasewidget/widget/EditText;->DEFAULT_TEXT_HANDLE_AND_CURSOR_COLOR:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x4

    new-array v6, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v8, 0x1

    aput-object v2, v6, v8

    const/4 v8, 0x2

    aput-object v3, v6, v8

    const/4 v8, 0x3

    aput-object v4, v6, v8

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v6, v7

    iget v9, p0, Lmiuix/androidbasewidget/widget/EditText;->mTextHandleAndCursorColor:I

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setTextSelectHandle(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setTextCursorDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return v0
.end method

.method public setMiuiStyleError(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x194

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

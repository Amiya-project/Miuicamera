.class public Lmiuix/slidingwidget/widget/SlidingButton;
.super Landroidx/appcompat/widget/AppCompatCheckBox;


# instance fields
.field private mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/slidingwidget/R$attr;->slidingButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-direct {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initDrawable()V

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initAnim()V

    sget-object v0, Lmiuix/slidingwidget/R$styleable;->SlidingButton:[I

    sget v1, Lmiuix/slidingwidget/R$style;->Widget_SlidingButton_DayNight:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    iget-object p3, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p3, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, LOooO0o/OooO0o0/OooO00o/OooOO0;

    invoke-direct {p1, p0}, LOooO0o/OooO0o0/OooO00o/OooOO0;-><init>(Lmiuix/slidingwidget/widget/SlidingButton;)V

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onHoverEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getAlpha()F

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/CheckBox;->getAlpha()F

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/CheckBox;->setMeasuredDimension(II)V

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setParentClipChildren()V

    return-void
.end method

.method public onSetAlpha(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/widget/CheckBox;->performClick()Z

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setAlpha(F)V

    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setLayerType(I)V

    :cond_0
    return-void
.end method

.method public setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButton;->mHelper:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

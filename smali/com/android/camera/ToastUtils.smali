.class public Lcom/android/camera/ToastUtils;
.super Ljava/lang/Object;


# static fields
.field private static final SHORT_DURATION_TIMEOUT:J = 0x7d0L

.field public static final TAG:Ljava/lang/String; = "ToastUtils"

.field private static sOldMsg:Ljava/lang/String; = null

.field private static sOneTime:J = 0x0L

.field public static sToast:Landroid/widget/Toast; = null

.field private static sTwoTime:J = 0x0L

.field private static sYOffsetMiui12:I = 0xb0


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toast"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/widget/Toast;

    const-string v3, "getWindowParams"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "ToastUtils"

    const-string v3, "getWindowParams: failed: "

    invoke-static {v2, v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowsParam: ret: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static prepareShowOnKeyguard(Landroid/widget/Toast;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toast"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/camera/ToastUtils;->getWindowParams(Landroid/widget/Toast;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resID"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resID",
            "gravity"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/16 p0, 0x50

    if-ne p2, p0, :cond_0

    sget p0, Lcom/android/camera/ToastUtils;->sYOffsetMiui12:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    const/4 v6, 0x0

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_1
    return-void
.end method

.method public static showToast(Landroid/content/Context;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resID",
            "isDefaultGravity"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "s"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "contentText",
            "gravity"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/16 p0, 0x50

    if-ne p2, p0, :cond_0

    sget p0, Lcom/android/camera/ToastUtils;->sYOffsetMiui12:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_1
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "contentText",
            "gravity",
            "xOffset",
            "yOffset"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/camera/ToastUtils;->showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method private static showToast(Ljava/lang/ref/WeakReference;Ljava/lang/String;IIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "contentText",
            "gravity",
            "xOffset",
            "yOffset",
            "isDefaultGravity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez v2, :cond_4

    if-eqz p0, :cond_8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    if-nez p5, :cond_2

    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/Toast;->setGravity(III)V

    :cond_2
    if-eqz v0, :cond_3

    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-static {p0}, Lcom/android/camera/ToastUtils;->prepareShowOnKeyguard(Landroid/widget/Toast;)V

    :cond_3
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sput-object p1, Lcom/android/camera/ToastUtils;->sOldMsg:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/android/camera/ToastUtils;->sOneTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    sput-object p1, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sput-wide p2, Lcom/android/camera/ToastUtils;->sTwoTime:J

    sget-object p0, Lcom/android/camera/ToastUtils;->sOldMsg:Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sput-object p1, Lcom/android/camera/ToastUtils;->sOldMsg:Ljava/lang/String;

    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_6

    sget-wide p0, Lcom/android/camera/ToastUtils;->sTwoTime:J

    sget-wide p2, Lcom/android/camera/ToastUtils;->sOneTime:J

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x7d0

    cmp-long p0, p0, p2

    if-lez p0, :cond_8

    :cond_6
    sget-wide p0, Lcom/android/camera/ToastUtils;->sTwoTime:J

    sput-wide p0, Lcom/android/camera/ToastUtils;->sOneTime:J

    if-eqz v0, :cond_7

    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-static {p0}, Lcom/android/camera/ToastUtils;->prepareShowOnKeyguard(Landroid/widget/Toast;)V

    :cond_7
    sget-object p0, Lcom/android/camera/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_8
    :goto_1
    return-void
.end method

.class public interface abstract Lcom/android/camera2/compat/theme/common/MithemeOperationFocusInterface;
.super Ljava/lang/Object;


# virtual methods
.method public getCameraFocusPaintCenterIndicator(Landroid/content/Context;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getFocusViewOuterRectcolor()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setCenterFlag(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusCenterIndicator",
            "isCombo"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->setCenterFlag(I)V

    return-void
.end method

.method public setIndicatorBitmapSun(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusCenterIndicator",
            "exposureBitmap"
        }
    .end annotation

    return-void
.end method

.class public interface abstract Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IndicatorChangeListener"
.end annotation


# static fields
.field public static final CLICK:I = 0x1

.field public static final INIT_VIEW:I = 0x3

.field public static final SET_CHECK:I = 0x2


# virtual methods
.method public abstract onIndicatorChange(Lcom/android/camera/fragment/beauty/SubEffectUI;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subEffectUI",
            "changeType"
        }
    .end annotation
.end method

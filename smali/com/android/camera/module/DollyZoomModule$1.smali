.class public Lcom/android/camera/module/DollyZoomModule$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/DollyZoomModule;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/DollyZoomModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/DollyZoomModule;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "x0",
            "x1"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/DollyZoomModule$1;->this$0:Lcom/android/camera/module/DollyZoomModule;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule$1;->this$0:Lcom/android/camera/module/DollyZoomModule;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/camera/module/DollyZoomModule;->onShutterButtonClick(I)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/DollyZoomModule$1;->this$0:Lcom/android/camera/module/DollyZoomModule;

    invoke-static {p0, p1, p2}, Lcom/android/camera/module/DollyZoomModule;->access$300(Lcom/android/camera/module/DollyZoomModule;J)V

    return-void
.end method

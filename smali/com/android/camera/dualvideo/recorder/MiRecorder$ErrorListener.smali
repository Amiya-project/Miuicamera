.class public Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/recorder/MiRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/recorder/MiRecorder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;->this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mr",
            "what",
            "extra"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaRecorder error. what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "MiRecorder"

    invoke-static {v0, p1, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;->this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-static {p1}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->access$000(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/dualvideo/recorder/MiRecorder$ErrorListener;->this$0:Lcom/android/camera/dualvideo/recorder/MiRecorder;

    invoke-static {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder;->access$100(Lcom/android/camera/dualvideo/recorder/MiRecorder;)Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/dualvideo/recorder/MiRecorder$MiRecorderListener;->doStop()V

    :cond_1
    return-void
.end method

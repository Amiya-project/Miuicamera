.class public Lcom/android/camera/performance/CaptureStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/performance/CaptureStatus$Builder;
    }
.end annotation


# instance fields
.field private isCaptureNightSE:Z

.field private isFrontCamera:Z

.field private isHdrOn:Z

.field private isMultiCapture:Z

.field private isNeedFlash:Z

.field private modeIndex:I


# direct methods
.method private constructor <init>(Lcom/android/camera/performance/CaptureStatus$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$000(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/performance/CaptureStatus;->isFrontCamera:Z

    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$100(Lcom/android/camera/performance/CaptureStatus$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/performance/CaptureStatus;->modeIndex:I

    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$200(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/performance/CaptureStatus;->isNeedFlash:Z

    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$300(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/performance/CaptureStatus;->isHdrOn:Z

    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$400(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/performance/CaptureStatus;->isCaptureNightSE:Z

    invoke-static {p1}, Lcom/android/camera/performance/CaptureStatus$Builder;->access$500(Lcom/android/camera/performance/CaptureStatus$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/performance/CaptureStatus;->isMultiCapture:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/performance/CaptureStatus$Builder;Lcom/android/camera/performance/CaptureStatus$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/performance/CaptureStatus;-><init>(Lcom/android/camera/performance/CaptureStatus$Builder;)V

    return-void
.end method


# virtual methods
.method public getModeIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/performance/CaptureStatus;->modeIndex:I

    return p0
.end method

.method public isCaptureNightSE()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isCaptureNightSE:Z

    return p0
.end method

.method public isFrontCamera()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isFrontCamera:Z

    return p0
.end method

.method public isHdrOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isHdrOn:Z

    return p0
.end method

.method public isMultiCapture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isMultiCapture:Z

    return p0
.end method

.method public isNeedFlash()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/performance/CaptureStatus;->isNeedFlash:Z

    return p0
.end method

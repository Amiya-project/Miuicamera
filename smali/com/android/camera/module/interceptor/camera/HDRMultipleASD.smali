.class public Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;
.super Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor<",
        "Lcom/android/camera/module/Camera2Module;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FunctionParseAsdHdr"


# instance fields
.field private hdrMode:Ljava/lang/Integer;

.field private hdrStatus:Ljava/lang/Byte;

.field private mHdrCheckerCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private motionDetected:Ljava/lang/Byte;

.field private thermalLevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hdrCheckerCallback"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->mHdrCheckerCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraDevice",
            "module",
            "chain"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->mHdrCheckerCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->isHdrSceneDetectionStarted()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    invoke-interface {p1, p3}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrSceneChanged(Z)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->motionDetected:Ljava/lang/Byte;

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    move p2, p3

    :goto_0
    invoke-interface {p1, p2}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrMotionDetectionResult(Z)V

    goto :goto_1

    :cond_3
    move p2, p3

    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->thermalLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, p3

    :goto_2
    invoke-interface {p1, v1}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrThermalDetectionResult(Z)V

    goto :goto_3

    :cond_5
    move v1, p3

    :goto_3
    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->hdrStatus:Ljava/lang/Byte;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_6

    move v2, v0

    goto :goto_4

    :cond_6
    move v2, p3

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply() called with: hdrMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->hdrMode:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", hdrStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->hdrStatus:Ljava/lang/Byte;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isMotionDetected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isHighTemperature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, p3, [Ljava/lang/Object;

    const-string v5, "FunctionParseAsdHdr"

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->hdrMode:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->isMatchCurrentHdrMode(I)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v2, :cond_7

    if-nez p2, :cond_7

    if-nez v1, :cond_7

    move p3, v0

    :cond_7
    invoke-interface {p1, p3}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrSceneChanged(Z)V

    :cond_8
    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "cameraDevice",
            "module",
            "chain"
        }
    .end annotation

    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "module"
        }
    .end annotation

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_MOTION_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_THERMAL_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AI_HDR_DETECTED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->HDR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDevice",
            "module"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->mHdrCheckerCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-interface {p0}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->isHdrSceneDetectionStarted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/camera2/Camera2Proxy$HdrCheckerCallback;->onHdrSceneChanged(Z)V

    return p1

    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p0

    const/4 p2, 0x3

    if-eq p0, p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "cameraDevice",
            "module"
        }
    .end annotation

    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z

    move-result p0

    return p0
.end method

.method public getSampleTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScope()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x6

    return p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string p0, "FunctionParseAsdHdr"

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "capabilities"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "module",
            "capabilities"
        }
    .end annotation

    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public tagValueAutomaticParsed()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    iput-object v2, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->motionDetected:Ljava/lang/Byte;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->thermalLevel:Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    iput-object v1, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->hdrStatus:Ljava/lang/Byte;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/HDRMultipleASD;->hdrMode:Ljava/lang/Integer;

    return-void
.end method

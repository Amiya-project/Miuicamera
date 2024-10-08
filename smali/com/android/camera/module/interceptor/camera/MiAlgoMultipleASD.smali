.class public Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;
.super Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor<",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MI_ALGO_ASD_SCENE"


# instance fields
.field private mNonSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

.field private mResultParseList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/scene/IResultParse;",
            ">;"
        }
    .end annotation
.end field

.field private mSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

.field private mStateScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MI_ALGO_ASD_SCENE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mResultParseList:Landroid/util/SparseArray;

    return-void
.end method

.method public static LOGD(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    sget-boolean v0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MI_ALGO_ASD_SCENE"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private parseMiAlgoASDSceneResult(ILcom/android/camera/module/BaseModule;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sceneClass",
            "module",
            "asdSceneArray"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mResultParseList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/scene/IResultParse;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    new-instance v0, Lcom/android/camera/scene/StateClassResultParse;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/camera/scene/StateClassResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    new-instance v0, Lcom/android/camera/scene/NoneSemanticsClassResultParse;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/camera/scene/NoneSemanticsClassResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lcom/android/camera/scene/SemanticsClassResultParse;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/camera/scene/SemanticsClassResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mResultParseList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v0, p3}, Lcom/android/camera/scene/IResultParse;->parseMiAlgoAsdResult(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V
    .locals 0
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

    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p2, p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->parseMiAlgoASDSceneResult(ILcom/android/camera/module/BaseModule;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mNonSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 p3, 0x1

    invoke-direct {p0, p3, p2, p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->parseMiAlgoASDSceneResult(ILcom/android/camera/module/BaseModule;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mStateScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 p3, 0x2

    invoke-direct {p0, p3, p2, p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->parseMiAlgoASDSceneResult(ILcom/android/camera/module/BaseModule;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

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

    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V
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

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATE_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z
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

    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
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

    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

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

    const-string p0, "MI_ALGO_ASD_SCENE"

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 2
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

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0xa3

    if-eq p0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xcd

    if-eq p0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p0

    const/16 p1, 0xbb

    if-eq p0, p1, :cond_0

    const-string/jumbo p0, "no capture mode!"

    invoke-static {p0}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->LOGD(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMiAlgoASDVersion(Lcom/android/camera2/CameraCapabilities;)F

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mi algo asd version:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->LOGD(Ljava/lang/String;)V

    const/high16 p1, 0x40000000    # 2.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
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

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public tagValueAutomaticParsed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene;->unmarshal([B)[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene;->unmarshal([B)[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mNonSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene;->unmarshal([B)[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mStateScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    return-void
.end method

.class public Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/protocols/FaceAnimatorListener;


# annotations
.annotation build Lcom/android/camera/jacoco/JacocoIgnore;
    ignore = false
    key = "isSupportFacePossEnable"
    type = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/capture/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceBeautyAnimatorManager"
.end annotation


# instance fields
.field private mAnimatorProgress:F

.field public final synthetic this$0:Lcom/android/camera/features/mode/capture/CaptureModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/capture/CaptureModule;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->mAnimatorProgress:F

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FaceAnimatorListener;->registerProtocol()V

    iget-object p0, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera2/CameraConfigManager;->setFacePoseEnable(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/IndicatorProtocol;->recreateFaceAnimationView()V

    return-void
.end method


# virtual methods
.method public onFaceBeautyAnimatorEnd()V
    .locals 3

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/FaceAnimatorListener;->unRegisterProtocol()V

    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mode/capture/CaptureModule;->access$2102(Lcom/android/camera/features/mode/capture/CaptureModule;Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;)Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;

    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mode/capture/CaptureModule;->handleUpdateFaceView(ZZ)V

    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigManager;->setFacePoseEnable(Z)V

    iget-object v0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigManager;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    iget-object p0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    new-array v0, v2, [I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public onFaceBeautyAnimatorStart()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/features/mode/capture/CaptureModule;->handleUpdateFaceView(ZZ)V

    return-void
.end method

.method public onFaceBeautyAnimatorUpdate(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->mAnimatorProgress:F

    iget-object p1, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->updateBeauty(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    iget-object p0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    const/4 p1, 0x0

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public updateBeauty(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultBeautyValues"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    iget v1, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->mAnimatorProgress:F

    invoke-direct {v0, p1, v1}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>(Lcom/android/camera/fragment/beauty/BeautyValues;F)V

    iget-object p0, p0, Lcom/android/camera/features/mode/capture/CaptureModule$FaceBeautyAnimatorManager;->this$0:Lcom/android/camera/features/mode/capture/CaptureModule;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    return-void
.end method

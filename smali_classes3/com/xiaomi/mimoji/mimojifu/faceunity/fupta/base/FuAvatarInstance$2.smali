.class public Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->rotateDelta(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

.field public final synthetic val$value:D


# direct methods
.method public constructor <init>(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$value"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iput-wide p2, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;->val$value:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v0, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v1, v1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    iget-wide v2, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;->val$value:D

    const-string v4, "rot_delta"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    return-void
.end method

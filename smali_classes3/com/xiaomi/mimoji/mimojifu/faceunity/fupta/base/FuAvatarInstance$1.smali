.class public Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setColor(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

.field public final synthetic val$colorType:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

.field public final synthetic val$fuColor:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$fuColor",
            "val$colorType"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iput-object p2, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->val$colorType:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    iput-object p3, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->val$fuColor:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v0, v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    sget-object v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$8;->$SwitchMap$com$xiaomi$mimoji$mimojifu$faceunity$fupta$base$entity$LabelCollection$ColorType:[I

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->val$colorType:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->val$colorType:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-static {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->val$fuColor:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setItemColor(Ljava/lang/String;Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    sget-object v1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->liplash:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v1

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;->val$fuColor:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setMakeColor(ILcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuColor;)V

    return-void
.end method

.class public Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->loadEffect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

.field public final synthetic val$effectPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$effectPath"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$6;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    iput-object p2, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$6;->val$effectPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->access$600()Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$6;->val$effectPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$6;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    iget-object v1, v1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController$6;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/FuController;

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    aput v0, p0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuSetMultiSamples(I)I

    :cond_0
    return-void
.end method

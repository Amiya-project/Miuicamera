.class public Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/ai/api/common/InstructionPayload;


# annotations
.annotation runtime Lcom/xiaomi/ai/api/common/NamespaceName;
    name = "Dialogue"
    namespace = "FullScreenTemplate"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ai/api/FullScreenTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dialogue"
.end annotation


# instance fields
.field private data:Lcom/xiaomi/ai/api/FullScreenTemplate$Dialog;
    .annotation runtime Lcom/xiaomi/ai/api/common/Required;
    .end annotation
.end field

.field private task:Lcom/xiaomi/common/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/common/Optional<",
            "Lcom/xiaomi/ai/api/Template$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/common/Optional;->empty()Lcom/xiaomi/common/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;->task:Lcom/xiaomi/common/Optional;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/ai/api/FullScreenTemplate$Dialog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/common/Optional;->empty()Lcom/xiaomi/common/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;->task:Lcom/xiaomi/common/Optional;

    iput-object p1, p0, Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;->data:Lcom/xiaomi/ai/api/FullScreenTemplate$Dialog;

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaomi/ai/api/FullScreenTemplate$Dialog;
    .locals 0
    .annotation runtime Lcom/xiaomi/ai/api/common/Required;
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;->data:Lcom/xiaomi/ai/api/FullScreenTemplate$Dialog;

    return-object p0
.end method

.method public getTask()Lcom/xiaomi/common/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/common/Optional<",
            "Lcom/xiaomi/ai/api/Template$Task;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;->task:Lcom/xiaomi/common/Optional;

    return-object p0
.end method

.method public setData(Lcom/xiaomi/ai/api/FullScreenTemplate$Dialog;)Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;
    .locals 0
    .annotation runtime Lcom/xiaomi/ai/api/common/Required;
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;->data:Lcom/xiaomi/ai/api/FullScreenTemplate$Dialog;

    return-object p0
.end method

.method public setTask(Lcom/xiaomi/ai/api/Template$Task;)Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/common/Optional;->ofNullable(Ljava/lang/Object;)Lcom/xiaomi/common/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/ai/api/FullScreenTemplate$Dialogue;->task:Lcom/xiaomi/common/Optional;

    return-object p0
.end method

.class public Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;
.super Lcom/xiaomi/camera/util/State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/util/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuittingState"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/util/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;->this$0:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/StateMachine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

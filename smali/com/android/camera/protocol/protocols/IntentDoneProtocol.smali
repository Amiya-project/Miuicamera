.class public interface abstract Lcom/android/camera/protocol/protocols/IntentDoneProtocol;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/BaseProtocol;


# direct methods
.method public static impl()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/protocol/protocols/IntentDoneProtocol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/IntentDoneProtocol;

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol2(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract setResultBitmap(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation
.end method

.method public abstract show()V
.end method

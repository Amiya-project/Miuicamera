.class public Lcom/android/camera2/DetachableClickListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/DetachableClickListener;->clearOnDetach(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/DetachableClickListener;


# direct methods
.method public constructor <init>(Lcom/android/camera2/DetachableClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/DetachableClickListener$1;->this$0:Lcom/android/camera2/DetachableClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 1

    const-string p0, "DetachableClickListener"

    const-string v0, "dialog attach to window"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/DetachableClickListener$1;->this$0:Lcom/android/camera2/DetachableClickListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera2/DetachableClickListener;->access$002(Lcom/android/camera2/DetachableClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Lcom/android/camera2/DetachableClickListener$1;->this$0:Lcom/android/camera2/DetachableClickListener;

    invoke-static {p0, v1}, Lcom/android/camera2/DetachableClickListener;->access$102(Lcom/android/camera2/DetachableClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.class public Lcom/android/camera/fragment/settings/SmartGuideFragment$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/SmartGuideFragment;->installQRCodeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/SmartGuideFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/SmartGuideFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment$2;->this$0:Lcom/android/camera/fragment/settings/SmartGuideFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/settings/SmartGuideFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const-string p1, "SmartGuideFragment"

    const-string v0, "installQRCode..."

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment$2;->this$0:Lcom/android/camera/fragment/settings/SmartGuideFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment$2;->this$0:Lcom/android/camera/fragment/settings/SmartGuideFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/settings/SmartGuideFragment;->access$100(Lcom/android/camera/fragment/settings/SmartGuideFragment;)Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;

    move-result-object p0

    const-string v0, "com.xiaomi.scanner"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/camera/Util;->installPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/lib/compatibility/util/CompatibilityUtils$PackageInstallerListener;ZZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.class public final Lcom/android/camera2/vendortag/CaptureResultVendorTags$1;
.super Lcom/android/camera2/vendortag/VendorTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/vendortag/CaptureResultVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/vendortag/VendorTag<",
        "Landroid/hardware/camera2/CaptureResult$Key<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$klass:Ljava/lang/Class;

.field public final synthetic val$nameSupplier:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$nameSupplier",
            "val$klass"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags$1;->val$klass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags$1;->val$nameSupplier:Ljava/util/function/Supplier;

    invoke-direct {p0}, Lcom/android/camera2/vendortag/VendorTag;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/CaptureResultVendorTags$1;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags$1;->val$klass:Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/CaptureResultVendorTags$1;->create()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/CaptureResultVendorTags$1;->val$nameSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.class public final synthetic LOooO0OO/OooO0O0/OooO0o0/o00O000o;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic o0000o0o:Lcom/android/zxing/DocumentDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/DocumentDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO0o0/o00O000o;->o0000o0o:Lcom/android/zxing/DocumentDecoder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO0o0/o00O000o;->o0000o0o:Lcom/android/zxing/DocumentDecoder;

    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-static {p0, p1}, Lcom/android/zxing/DocumentDecoder;->OooO00o(Lcom/android/zxing/DocumentDecoder;Lcom/android/zxing/PreviewImage;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

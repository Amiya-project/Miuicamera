.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00OO00O/OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o:Landroid/net/Uri;

.field public final synthetic o0000o0o:Lcom/android/camera/storage/ImageSaveRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/storage/ImageSaveRequest;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00OO00O/OooO0O0;->o0000o0o:Lcom/android/camera/storage/ImageSaveRequest;

    iput-object p2, p0, LOooO0OO/OooO0O0/OooO00o/o00OO00O/OooO0O0;->o0000o:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/o00OO00O/OooO0O0;->o0000o0o:Lcom/android/camera/storage/ImageSaveRequest;

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00OO00O/OooO0O0;->o0000o:Landroid/net/Uri;

    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/storage/ImageSaveRequest;->OooO00o(Landroid/net/Uri;Lcom/android/camera/Thumbnail;)V

    return-void
.end method

.class public final synthetic LOooO0OO/OooO0O0/OooO00o/OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:Landroid/graphics/Rect;

.field public final synthetic o0000o0o:Lcom/android/camera/ActivityBase;

.field public final synthetic o0000oO0:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ActivityBase;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/OooO0o;->o0000o0o:Lcom/android/camera/ActivityBase;

    iput-object p2, p0, LOooO0OO/OooO0O0/OooO00o/OooO0o;->o0000o:Landroid/graphics/Rect;

    iput-object p3, p0, LOooO0OO/OooO0O0/OooO00o/OooO0o;->o0000oO0:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/OooO0o;->o0000o0o:Lcom/android/camera/ActivityBase;

    iget-object v1, p0, LOooO0OO/OooO0O0/OooO00o/OooO0o;->o0000o:Landroid/graphics/Rect;

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/OooO0o;->o0000oO0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ActivityBase;->OooO0O0(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    return-void
.end method

.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooOO0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o:Lcom/android/camera/fragment/beauty/IBeautyMutex;

.field public final synthetic o0000o0o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/camera/fragment/beauty/IBeautyMutex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooOO0;->o0000o0o:Ljava/lang/String;

    iput-object p2, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooOO0;->o0000o:Lcom/android/camera/fragment/beauty/IBeautyMutex;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooOO0;->o0000o0o:Ljava/lang/String;

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0OOO00/OooOO0;->o0000o:Lcom/android/camera/fragment/beauty/IBeautyMutex;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p0, p1}, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->lambda$updateMutex$0(Ljava/lang/String;Lcom/android/camera/fragment/beauty/IBeautyMutex;Ljava/util/Map$Entry;)V

    return-void
.end method

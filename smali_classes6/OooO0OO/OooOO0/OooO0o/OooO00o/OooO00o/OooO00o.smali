.class public final synthetic LOooO0OO/OooOO0/OooO0o/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o0000o:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper$LifeEvent;

.field public final synthetic o0000o0o:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper$LifeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooOO0/OooO0o/OooO00o/OooO00o/OooO00o;->o0000o0o:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    iput-object p2, p0, LOooO0OO/OooOO0/OooO0o/OooO00o/OooO00o/OooO00o;->o0000o:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper$LifeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooOO0/OooO0o/OooO00o/OooO00o/OooO00o;->o0000o0o:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;

    iget-object p0, p0, LOooO0OO/OooOO0/OooO0o/OooO00o/OooO00o/OooO00o;->o0000o:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper$LifeEvent;

    invoke-virtual {v0, p0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper;->OooO00o(Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessWrapper$LifeEvent;)V

    return-void
.end method

.class public Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;
.super Ljava/lang/Object;


# instance fields
.field private bundle:Ljava/lang/String;

.field private item:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->bundle:Ljava/lang/String;

    return-object p0
.end method

.method public getItem()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->item:I

    return p0
.end method

.method public setBundle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->bundle:Ljava/lang/String;

    return-void
.end method

.method public setItem(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    iput p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->item:I

    return-void
.end method

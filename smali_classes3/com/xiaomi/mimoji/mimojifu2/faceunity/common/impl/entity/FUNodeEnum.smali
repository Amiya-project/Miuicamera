.class public final enum Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

.field public static final enum customize:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

.field public static final enum idle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

.field public static final enum listen:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

.field public static final enum talk:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

.field public static final enum talk_idle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    const-string v1, "idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;->idle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    new-instance v1, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    const-string v3, "talk"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;->talk:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    new-instance v3, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    const-string v5, "talk_idle"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;->talk_idle:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    new-instance v5, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    const-string v7, "listen"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;->listen:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    new-instance v7, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    const-string v9, "customize"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;->customize:Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;->$VALUES:[Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;
    .locals 1

    sget-object v0, Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;->$VALUES:[Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    invoke-virtual {v0}, [Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mimoji/mimojifu2/faceunity/common/impl/entity/FUNodeEnum;

    return-object v0
.end method

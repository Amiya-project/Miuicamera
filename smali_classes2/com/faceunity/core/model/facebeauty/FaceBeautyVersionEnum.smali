.class public final enum Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;
.super Ljava/lang/Enum;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "VERSION_1",
        "VERSION_2",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

.field public static final enum VERSION_1:Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

.field public static final enum VERSION_2:Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    new-instance v1, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    const-string v2, "VERSION_1"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;->VERSION_1:Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    aput-object v1, v0, v3

    new-instance v1, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    const-string v2, "VERSION_2"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;->VERSION_2:Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;->$VALUES:[Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;
    .locals 1

    const-class v0, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    return-object p0
.end method

.method public static values()[Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;
    .locals 1

    sget-object v0, Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;->$VALUES:[Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    invoke-virtual {v0}, [Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/faceunity/core/model/facebeauty/FaceBeautyVersionEnum;

    return-object v0
.end method

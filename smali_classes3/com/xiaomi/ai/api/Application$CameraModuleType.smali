.class public final enum Lcom/xiaomi/ai/api/Application$CameraModuleType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ai/api/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraModuleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ai/api/Application$CameraModuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ai/api/Application$CameraModuleType;

.field public static final enum PHOTO:Lcom/xiaomi/ai/api/Application$CameraModuleType;

.field public static final enum PORTRAIT:Lcom/xiaomi/ai/api/Application$CameraModuleType;

.field public static final enum UNKNOWN:Lcom/xiaomi/ai/api/Application$CameraModuleType;
    .annotation runtime LOooO0OO/OooO0o0/OooO00o/OooO00o/OooOo;
    .end annotation
.end field

.field public static final enum VIDEO:Lcom/xiaomi/ai/api/Application$CameraModuleType;


# instance fields
.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/xiaomi/ai/api/Application$CameraModuleType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ai/api/Application$CameraModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ai/api/Application$CameraModuleType;->UNKNOWN:Lcom/xiaomi/ai/api/Application$CameraModuleType;

    new-instance v1, Lcom/xiaomi/ai/api/Application$CameraModuleType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    const/16 v5, 0xa2

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/ai/api/Application$CameraModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/ai/api/Application$CameraModuleType;->VIDEO:Lcom/xiaomi/ai/api/Application$CameraModuleType;

    new-instance v3, Lcom/xiaomi/ai/api/Application$CameraModuleType;

    const-string v5, "PHOTO"

    const/4 v6, 0x2

    const/16 v7, 0xa3

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/ai/api/Application$CameraModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/ai/api/Application$CameraModuleType;->PHOTO:Lcom/xiaomi/ai/api/Application$CameraModuleType;

    new-instance v5, Lcom/xiaomi/ai/api/Application$CameraModuleType;

    const-string v7, "PORTRAIT"

    const/4 v8, 0x3

    const/16 v9, 0xab

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/ai/api/Application$CameraModuleType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/ai/api/Application$CameraModuleType;->PORTRAIT:Lcom/xiaomi/ai/api/Application$CameraModuleType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaomi/ai/api/Application$CameraModuleType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/xiaomi/ai/api/Application$CameraModuleType;->$VALUES:[Lcom/xiaomi/ai/api/Application$CameraModuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/ai/api/Application$CameraModuleType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ai/api/Application$CameraModuleType;
    .locals 1

    const-class v0, Lcom/xiaomi/ai/api/Application$CameraModuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ai/api/Application$CameraModuleType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ai/api/Application$CameraModuleType;
    .locals 1

    sget-object v0, Lcom/xiaomi/ai/api/Application$CameraModuleType;->$VALUES:[Lcom/xiaomi/ai/api/Application$CameraModuleType;

    invoke-virtual {v0}, [Lcom/xiaomi/ai/api/Application$CameraModuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ai/api/Application$CameraModuleType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/ai/api/Application$CameraModuleType;->id:I

    return p0
.end method

.class public final enum Lcom/xiaomi/ai/api/Common$VideoMediaType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ai/api/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoMediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ai/api/Common$VideoMediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ai/api/Common$VideoMediaType;

.field public static final enum GAME:Lcom/xiaomi/ai/api/Common$VideoMediaType;

.field public static final enum GAME_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

.field public static final enum LONG_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;
    .annotation runtime LOooO0OO/OooO0o0/OooO00o/OooO00o/OooOo;
    .end annotation
.end field

.field public static final enum NEWS:Lcom/xiaomi/ai/api/Common$VideoMediaType;

.field public static final enum NEWS_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

.field public static final enum OPEN_CLASS:Lcom/xiaomi/ai/api/Common$VideoMediaType;

.field public static final enum OPEN_CLASS_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

.field public static final enum SHORT_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

.field public static final enum STATION:Lcom/xiaomi/ai/api/Common$VideoMediaType;

.field public static final enum STATION_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;


# instance fields
.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v1, "LONG_VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ai/api/Common$VideoMediaType;->LONG_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    new-instance v1, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v3, "SHORT_VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/ai/api/Common$VideoMediaType;->SHORT_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    new-instance v3, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v5, "STATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/ai/api/Common$VideoMediaType;->STATION:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    new-instance v5, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v7, "NEWS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/ai/api/Common$VideoMediaType;->NEWS:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    new-instance v7, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v9, "GAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaomi/ai/api/Common$VideoMediaType;->GAME:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    new-instance v9, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v11, "OPEN_CLASS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/xiaomi/ai/api/Common$VideoMediaType;->OPEN_CLASS:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    new-instance v11, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v13, "STATION_VIDEO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/xiaomi/ai/api/Common$VideoMediaType;->STATION_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    new-instance v13, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v15, "NEWS_VIDEO"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/xiaomi/ai/api/Common$VideoMediaType;->NEWS_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    new-instance v15, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v14, "GAME_VIDEO"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/xiaomi/ai/api/Common$VideoMediaType;->GAME_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    new-instance v14, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const-string v12, "OPEN_CLASS_VIDEO"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/xiaomi/ai/api/Common$VideoMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/xiaomi/ai/api/Common$VideoMediaType;->OPEN_CLASS_VIDEO:Lcom/xiaomi/ai/api/Common$VideoMediaType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/xiaomi/ai/api/Common$VideoMediaType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/xiaomi/ai/api/Common$VideoMediaType;->$VALUES:[Lcom/xiaomi/ai/api/Common$VideoMediaType;

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

    iput p3, p0, Lcom/xiaomi/ai/api/Common$VideoMediaType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ai/api/Common$VideoMediaType;
    .locals 1

    const-class v0, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ai/api/Common$VideoMediaType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ai/api/Common$VideoMediaType;
    .locals 1

    sget-object v0, Lcom/xiaomi/ai/api/Common$VideoMediaType;->$VALUES:[Lcom/xiaomi/ai/api/Common$VideoMediaType;

    invoke-virtual {v0}, [Lcom/xiaomi/ai/api/Common$VideoMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ai/api/Common$VideoMediaType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/ai/api/Common$VideoMediaType;->id:I

    return p0
.end method

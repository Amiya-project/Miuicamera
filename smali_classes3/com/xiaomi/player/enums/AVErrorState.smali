.class public final enum Lcom/xiaomi/player/enums/AVErrorState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/player/enums/AVErrorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorAccess:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorDecoderNotFound:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorHttpBadRequest:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorHttpForbidden:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorHttpNotFound:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorHttpUnauthorized:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorIO:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorNoEntrance:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorNoMemory:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorOther:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorStreamNotFound:Lcom/xiaomi/player/enums/AVErrorState;

.field public static final enum AVErrorTimedOut:Lcom/xiaomi/player/enums/AVErrorState;


# instance fields
.field private nCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v1, "AVErrorStreamNotFound"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorStreamNotFound:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v1, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v3, "AVErrorDecoderNotFound"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorDecoderNotFound:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v3, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v5, "AVErrorHttpBadRequest"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorHttpBadRequest:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v5, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v7, "AVErrorHttpUnauthorized"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorHttpUnauthorized:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v7, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v9, "AVErrorHttpForbidden"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorHttpForbidden:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v9, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v11, "AVErrorHttpNotFound"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorHttpNotFound:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v11, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v13, "AVErrorTimedOut"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorTimedOut:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v13, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v15, "AVErrorNoEntrance"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorNoEntrance:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v15, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v14, "AVErrorNoMemory"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorNoMemory:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v14, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v12, "AVErrorIO"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorIO:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v12, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v10, "AVErrorAccess"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorAccess:Lcom/xiaomi/player/enums/AVErrorState;

    new-instance v10, Lcom/xiaomi/player/enums/AVErrorState;

    const-string v8, "AVErrorOther"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/xiaomi/player/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorOther:Lcom/xiaomi/player/enums/AVErrorState;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/xiaomi/player/enums/AVErrorState;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lcom/xiaomi/player/enums/AVErrorState;->$VALUES:[Lcom/xiaomi/player/enums/AVErrorState;

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

    iput p3, p0, Lcom/xiaomi/player/enums/AVErrorState;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/player/enums/AVErrorState;
    .locals 6

    sget-object v0, Lcom/xiaomi/player/enums/AVErrorState;->AVErrorStreamNotFound:Lcom/xiaomi/player/enums/AVErrorState;

    invoke-static {}, Lcom/xiaomi/player/enums/AVErrorState;->values()[Lcom/xiaomi/player/enums/AVErrorState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/player/enums/AVErrorState;
    .locals 1

    const-class v0, Lcom/xiaomi/player/enums/AVErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/player/enums/AVErrorState;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/player/enums/AVErrorState;
    .locals 1

    sget-object v0, Lcom/xiaomi/player/enums/AVErrorState;->$VALUES:[Lcom/xiaomi/player/enums/AVErrorState;

    invoke-virtual {v0}, [Lcom/xiaomi/player/enums/AVErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/player/enums/AVErrorState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/player/enums/AVErrorState;->nCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/player/enums/AVErrorState;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

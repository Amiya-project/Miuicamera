.class public final enum Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

.field public static final enum PlayerWorkingDisableAudioDeviceMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

.field public static final enum PlayerWorkingEditPreViewMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

.field public static final enum PlayerWorkingLipSyncMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

.field public static final enum PlayerWorkingLowVideoDelayMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

.field public static final enum PlayerWorkingVideoSmoothMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;


# instance fields
.field private nCode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    const-string v1, "PlayerWorkingLipSyncMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->PlayerWorkingLipSyncMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    new-instance v1, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    const-string v3, "PlayerWorkingLowVideoDelayMode"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->PlayerWorkingLowVideoDelayMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    new-instance v3, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    const-string v5, "PlayerWorkingVideoSmoothMode"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->PlayerWorkingVideoSmoothMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    new-instance v5, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    const-string v7, "PlayerWorkingDisableAudioDeviceMode"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->PlayerWorkingDisableAudioDeviceMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    new-instance v7, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    const-string v9, "PlayerWorkingEditPreViewMode"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->PlayerWorkingEditPreViewMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

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

    iput p3, p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;
    .locals 6

    sget-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->PlayerWorkingLipSyncMode:Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    invoke-static {}, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->values()[Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;
    .locals 1

    const-class v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;
    .locals 1

    sget-object v0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->$VALUES:[Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    invoke-virtual {v0}, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/Video2GifPlayer/enums/PlayerWorkingMode;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

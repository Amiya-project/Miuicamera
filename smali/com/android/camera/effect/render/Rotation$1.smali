.class public synthetic Lcom/android/camera/effect/render/Rotation$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/render/Rotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$camera$effect$render$Rotation:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/effect/render/Rotation;->values()[Lcom/android/camera/effect/render/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/effect/render/Rotation$1;->$SwitchMap$com$android$camera$effect$render$Rotation:[I

    :try_start_0
    sget-object v1, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/camera/effect/render/Rotation$1;->$SwitchMap$com$android$camera$effect$render$Rotation:[I

    sget-object v1, Lcom/android/camera/effect/render/Rotation;->ROTATION_90:Lcom/android/camera/effect/render/Rotation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/camera/effect/render/Rotation$1;->$SwitchMap$com$android$camera$effect$render$Rotation:[I

    sget-object v1, Lcom/android/camera/effect/render/Rotation;->ROTATION_180:Lcom/android/camera/effect/render/Rotation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/camera/effect/render/Rotation$1;->$SwitchMap$com$android$camera$effect$render$Rotation:[I

    sget-object v1, Lcom/android/camera/effect/render/Rotation;->ROTATION_270:Lcom/android/camera/effect/render/Rotation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

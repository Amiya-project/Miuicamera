.class public Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/Drawable2dFull;
.super Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Drawable2d;


# static fields
.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_COORDsS:[F

.field private static final FULL_RECTANGLE_TEX_COORDS:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/Drawable2dFull;->FULL_RECTANGLE_COORDS:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/Drawable2dFull;->FULL_RECTANGLE_COORDsS:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/Drawable2dFull;->FULL_RECTANGLE_TEX_COORDS:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/Drawable2dFull;->FULL_RECTANGLE_COORDS:[F

    sget-object v1, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/Drawable2dFull;->FULL_RECTANGLE_TEX_COORDS:[F

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/gles/core/Drawable2d;-><init>([F[F)V

    return-void
.end method

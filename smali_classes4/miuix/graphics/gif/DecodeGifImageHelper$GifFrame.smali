.class public Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/gif/DecodeGifImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifFrame"
.end annotation


# instance fields
.field public mDuration:I

.field public mImage:Landroid/graphics/Bitmap;

.field public mIndex:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mImage:Landroid/graphics/Bitmap;

    iput p2, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mDuration:I

    iput p3, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mIndex:I

    return-void
.end method

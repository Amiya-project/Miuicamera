.class public final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;


# instance fields
.field private final newString:Ljava/lang/String;

.field private final remaining:Z

.field private final remainingValue:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    iput p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    iput p3, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNewString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    return-object p0
.end method

.method public getRemainingValue()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    return p0
.end method

.method public isRemaining()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    return p0
.end method

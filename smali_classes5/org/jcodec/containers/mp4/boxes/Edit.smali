.class public Lorg/jcodec/containers/mp4/boxes/Edit;
.super Ljava/lang/Object;


# instance fields
.field private duration:J

.field private mediaTime:J

.field private rate:F


# direct methods
.method public constructor <init>(JJF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->duration:J

    iput-wide p3, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    iput p5, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->rate:F

    return-void
.end method

.method public static createEdit(Lorg/jcodec/containers/mp4/boxes/Edit;)Lorg/jcodec/containers/mp4/boxes/Edit;
    .locals 7

    new-instance v6, Lorg/jcodec/containers/mp4/boxes/Edit;

    iget-wide v1, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->duration:J

    iget-wide v3, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    iget v5, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->rate:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/jcodec/containers/mp4/boxes/Edit;-><init>(JJF)V

    return-object v6
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->duration:J

    return-wide v0
.end method

.method public getMediaTime()J
    .locals 2

    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    return-wide v0
.end method

.method public getRate()F
    .locals 0

    iget p0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->rate:F

    return p0
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->duration:J

    return-void
.end method

.method public setMediaTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    return-void
.end method

.method public shift(J)V
    .locals 2

    iget-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/jcodec/containers/mp4/boxes/Edit;->mediaTime:J

    return-void
.end method

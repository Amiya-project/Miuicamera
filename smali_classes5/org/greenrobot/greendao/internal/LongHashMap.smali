.class public final Lorg/greenrobot/greendao/internal/LongHashMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/internal/LongHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private size:I

.field private table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/greenrobot/greendao/internal/LongHashMap$Entry<",
            "TT;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/internal/LongHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    mul-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->threshold:I

    new-array p1, p1, [Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    iput-object p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    iget-object p0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public containsKey(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    xor-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    rem-int/2addr v0, v1

    iget-object p0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object p0, p0, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-wide v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    xor-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    rem-int/2addr v0, v1

    iget-object p0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object p0, p0, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-wide v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public logStats()V
    .locals 5

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    :goto_1
    if-eqz v4, :cond_0

    iget-object v4, v4, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    int-to-float v1, v1

    iget v2, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capa: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", collisions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", collision ratio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v1, v3

    iget p0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)TT;"
        }
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    xor-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object v1, v1, v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-wide v3, v2, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    iget-object p0, v2, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p3, v2, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v2, v2, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    new-instance v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    invoke-direct {v3, p1, p2, p3, v1}, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;-><init>(JLjava/lang/Object;Lorg/greenrobot/greendao/internal/LongHashMap$Entry;)V

    aput-object v3, v2, v0

    iget p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    iget p2, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->threshold:I

    if-le p1, p2, :cond_2

    iget p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/internal/LongHashMap;->setCapacity(I)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    xor-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v4, v1, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    iget-wide v5, v1, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    if-nez v3, :cond_0

    iget-object p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aput-object v4, p1, v0

    goto :goto_1

    :cond_0
    iput-object v4, v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    :goto_1
    iget p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    iget-object p0, v1, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->value:Ljava/lang/Object;

    return-object p0

    :cond_1
    move-object v3, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public reserveRoom(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryCount"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/internal/LongHashMap;->setCapacity(I)V

    return-void
.end method

.method public setCapacity(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newCapacity"
        }
    .end annotation

    new-array v0, p1, [Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object v3, v3, v2

    :goto_1
    if-eqz v3, :cond_0

    iget-wide v4, v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->key:J

    const/16 v6, 0x20

    ushr-long v6, v4, v6

    long-to-int v6, v6

    long-to-int v4, v4

    xor-int/2addr v4, v6

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    rem-int/2addr v4, p1

    iget-object v5, v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aget-object v6, v0, v4

    iput-object v6, v3, Lorg/greenrobot/greendao/internal/LongHashMap$Entry;->next:Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    aput-object v3, v0, v4

    move-object v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->table:[Lorg/greenrobot/greendao/internal/LongHashMap$Entry;

    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->capacity:I

    mul-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->threshold:I

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/greenrobot/greendao/internal/LongHashMap;->size:I

    return p0
.end method

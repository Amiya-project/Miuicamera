.class public LOooO0o0/o0000O;
.super LOooO0o0/o000OO;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\t*\u00020\n2\u0006\u0010\u0008\u001a\u00020\u0001H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\u000c*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\u000c*\u00020\tH\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u000c*\u00020\u0006H\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u000c*\u00020\tH\u0087\u0008\u001a\r\u0010\u000e\u001a\u00020\u000c*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u000e\u001a\u00020\u000c*\u00020\tH\u0087\u0008\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u0002*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u0001*\u00020\tH\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u0002*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\tH\u0087\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "countLeadingZeroBits",
        "",
        "",
        "countOneBits",
        "countTrailingZeroBits",
        "fromBits",
        "",
        "Lkotlin/Double$Companion;",
        "bits",
        "",
        "Lkotlin/Float$Companion;",
        "isFinite",
        "",
        "isInfinite",
        "isNaN",
        "rotateLeft",
        "bitCount",
        "rotateRight",
        "takeHighestOneBit",
        "takeLowestOneBit",
        "toBits",
        "toRawBits",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x31
    xs = "kotlin/NumbersKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LOooO0o0/o000OO;-><init>()V

    return-void
.end method

.method private static final o0000(F)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.2"
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method private static final o00000(F)Z
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    return p0
.end method

.method private static final o000000(D)Z
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    return p0
.end method

.method private static final o000000O(F)Z
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    return p0
.end method

.method private static final o000000o(D)Z
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0
.end method

.method private static final o00000O(JI)J
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.6"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final o00000O0(II)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.6"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    return p0
.end method

.method private static final o00000OO(II)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.6"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    return p0
.end method

.method private static final o00000Oo(JI)J
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.6"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final o00000o0(I)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method private static final o00000oO(I)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p0

    return p0
.end method

.method private static final o00000oo(J)J
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->lowestOneBit(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final o0000O00(D)J
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.2"
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final o0000Ooo(J)J
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final o0000oO(D)J
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.2"
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final o0000oo(F)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.2"
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    return p0
.end method

.method private static final o000OOo(F)Z
    .locals 1
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final o00oO0O(I)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    return p0
.end method

.method private static final o0O0O00(D)Z
    .locals 1
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final o0OO00O(LOooO0o0/o00ooOoO/o000O00O/o0Oo0oo;J)D
    .locals 1
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final o0OOO0o(I)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method private static final o0Oo0oo(J)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    return p0
.end method

.method private static final o0ooOO0(J)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    return p0
.end method

.method private static final o0ooOOo(I)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method private static final o0ooOoO(J)I
    .locals 0
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.4"
    .end annotation

    .annotation build LOooO0o0/o0oOOo;
        markerClass = {
            LOooO0o0/o00Ooo;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    return p0
.end method

.method private static final oo0o0Oo(LOooO0o0/o00ooOoO/o000O00O/o0O0O00;I)F
    .locals 1
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    .annotation build LOooO0o0/o0O0ooO;
        version = "1.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

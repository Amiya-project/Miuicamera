.class public final LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;

.field public final OooO0OO:I


# direct methods
.method public constructor <init>(Ljava/lang/String;LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;->OooO0O0:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;

    const/4 p1, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p2, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;->OooO0OO:I

    add-int/2addr p1, p2

    :goto_0
    iput p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public OooO00o([CII)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v0

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_1

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

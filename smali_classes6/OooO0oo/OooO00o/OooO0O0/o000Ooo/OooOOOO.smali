.class public final LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation


# static fields
.field public static final o000:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o0000o:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field private static final o0000o0o:J = -0x6bcff2af98b1a2b8L

.field public static final o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o0000oo0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O00:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O000:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O00O:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O0O:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O0O0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O0Oo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O0o:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000O0o0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field private static final o000O0oO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;",
            ">;"
        }
    .end annotation
.end field

.field public static final o000O0oo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000OO0O:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000Oo0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000OoO:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

.field public static final o000Ooo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;


# instance fields
.field private final o000OO00:Ljava/lang/String;

.field private final o000OO0o:[LOooO0oo/OooO00o/OooO0O0/o00000OO;

.field private final o0OoO0o:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    sget-object v0, LOooO0oo/OooO00o/OooO0O0/OooO0OO;->OooO0oO:Ljava/nio/charset/Charset;

    const-string v1, "application/atom+xml"

    invoke-static {v1, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v1

    sput-object v1, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0000o:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v2, "application/x-www-form-urlencoded"

    invoke-static {v2, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v2

    sput-object v2, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0000oO0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    sget-object v3, LOooO0oo/OooO00o/OooO0O0/OooO0OO;->OooO0o0:Ljava/nio/charset/Charset;

    const-string v4, "application/json"

    invoke-static {v4, v3}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v4

    sput-object v4, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0000oOO:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v5, "application/octet-stream"

    const/4 v6, 0x0

    invoke-static {v5, v6}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v5

    sput-object v5, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v5, "application/soap+xml"

    invoke-static {v5, v3}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v3

    sput-object v3, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0000oo0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v3, "application/svg+xml"

    invoke-static {v3, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v3

    sput-object v3, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v5, "application/xhtml+xml"

    invoke-static {v5, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v5

    sput-object v5, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v7, "application/xml"

    invoke-static {v7, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v7

    sput-object v7, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O000:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v8, "image/bmp"

    invoke-static {v8}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO00o(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v8

    sput-object v8, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OoO:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v9, "image/gif"

    invoke-static {v9}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO00o(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v9

    sput-object v9, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0o:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v10, "image/jpeg"

    invoke-static {v10}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO00o(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v10

    sput-object v10, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000Ooo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v11, "image/png"

    invoke-static {v11}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO00o(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v11

    sput-object v11, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0O:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v12, "image/svg+xml"

    invoke-static {v12}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO00o(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v12

    sput-object v12, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000Oo0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v13, "image/tiff"

    invoke-static {v13}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO00o(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v13

    sput-object v13, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O00:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v14, "image/webp"

    invoke-static {v14}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO00o(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v14

    sput-object v14, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O00O:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v15, "multipart/form-data"

    invoke-static {v15, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v15

    sput-object v15, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string/jumbo v6, "text/html"

    invoke-static {v6, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v6

    sput-object v6, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0Oo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-object/from16 v17, v6

    const-string/jumbo v6, "text/plain"

    invoke-static {v6, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v6

    sput-object v6, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO0O:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-object/from16 v18, v6

    const-string/jumbo v6, "text/xml"

    invoke-static {v6, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v0

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0O0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const-string v6, "*/*"

    move-object/from16 v19, v0

    const/4 v0, 0x0

    invoke-static {v6, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object v0

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0o0:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const/16 v0, 0x11

    new-array v6, v0, [LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    const/16 v16, 0x0

    aput-object v1, v6, v16

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v3, v6, v1

    const/4 v1, 0x4

    aput-object v5, v6, v1

    const/4 v1, 0x5

    aput-object v7, v6, v1

    const/4 v1, 0x6

    aput-object v8, v6, v1

    const/4 v1, 0x7

    aput-object v9, v6, v1

    const/16 v1, 0x8

    aput-object v10, v6, v1

    const/16 v1, 0x9

    aput-object v11, v6, v1

    const/16 v1, 0xa

    aput-object v12, v6, v1

    const/16 v1, 0xb

    aput-object v13, v6, v1

    const/16 v1, 0xc

    aput-object v14, v6, v1

    const/16 v1, 0xd

    aput-object v15, v6, v1

    const/16 v1, 0xe

    aput-object v17, v6, v1

    const/16 v1, 0xf

    aput-object v18, v6, v1

    const/16 v1, 0x10

    aput-object v19, v6, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move/from16 v2, v16

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v6, v2

    invoke-virtual {v3}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooOO0o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0oO:Ljava/util/Map;

    sget-object v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO0O:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0oo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    sget-object v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO00:Ljava/lang/String;

    iput-object p2, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0OoO0o:Ljava/nio/charset/Charset;

    const/4 p1, 0x0

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO0o:[LOooO0oo/OooO00o/OooO0O0/o00000OO;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;[LOooO0oo/OooO00o/OooO0O0/o00000OO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO00:Ljava/lang/String;

    iput-object p2, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0OoO0o:Ljava/nio/charset/Charset;

    iput-object p3, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO0o:[LOooO0oo/OooO00o/OooO0O0/o00000OO;

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0O0(Ljava/lang/String;Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    invoke-static {p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooOo00;->OooO0O0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 2

    const-string v0, "MIME type"

    invoke-static {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooO0o0(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooOOOo(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MIME type may not contain reserved characters"

    invoke-static {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooO00o(ZLjava/lang/String;)V

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    invoke-direct {v0, p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static varargs OooO0Oo(Ljava/lang/String;[LOooO0oo/OooO00o/OooO0O0/o00000OO;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const-string v0, "MIME type"

    invoke-static {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooO0o0(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooOOOo(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MIME type may not contain reserved characters"

    invoke-static {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooO00o(ZLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0o0(Ljava/lang/String;[LOooO0oo/OooO00o/OooO0O0/o00000OO;Z)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0o(LOooO0oo/OooO00o/OooO0O0/OooOOO0;Z)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 1

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOOO0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOOO0;->getParameters()[LOooO0oo/OooO00o/OooO0O0/o00000OO;

    move-result-object p0

    invoke-static {v0, p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0o0(Ljava/lang/String;[LOooO0oo/OooO00o/OooO0O0/o00000OO;Z)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0o0(Ljava/lang/String;[LOooO0oo/OooO00o/OooO0O0/o00000OO;Z)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    invoke-interface {v3}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooOo00;->OooO0O0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    throw v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object p2, v2

    :goto_2
    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    array-length v1, p1

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    invoke-direct {v0, p0, p2, p1}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;[LOooO0oo/OooO00o/OooO0O0/o00000OO;)V

    return-object v0
.end method

.method public static OooO0oO(LOooO0oo/OooO00o/OooO0O0/o000oOoO;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o0000;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->getContentType()LOooO0oo/OooO00o/OooO0O0/OooOO0O;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOO0O;->getElements()[LOooO0oo/OooO00o/OooO0O0/OooOOO0;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    const/4 v0, 0x1

    invoke-static {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0o(LOooO0oo/OooO00o/OooO0O0/OooOOO0;Z)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static OooO0oo(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0oO:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    return-object p0
.end method

.method public static OooOO0(LOooO0oo/OooO00o/OooO0O0/o000oOoO;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/o000oOoO;->getContentType()LOooO0oo/OooO00o/OooO0O0/OooOO0O;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, LOooO0oo/OooO00o/OooO0O0/OooOO0O;->getElements()[LOooO0oo/OooO00o/OooO0O0/OooOOO0;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0, v1}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0o(LOooO0oo/OooO00o/OooO0O0/OooOOO0;Z)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0
    :try_end_0
    .catch LOooO0oo/OooO00o/OooO0O0/o0000; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static OooOO0O(LOooO0oo/OooO00o/OooO0O0/o000oOoO;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o0000;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    invoke-static {p0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0oO(LOooO0oo/OooO00o/OooO0O0/o000oOoO;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0oo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    :goto_0
    return-object p0
.end method

.method public static OooOOO0(LOooO0oo/OooO00o/OooO0O0/o000oOoO;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o0000;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    invoke-static {p0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0oO(LOooO0oo/OooO00o/OooO0O0/o000oOoO;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000O0oo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    :goto_0
    return-object p0
.end method

.method public static OooOOOO(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o0000;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const-string v0, "Content type"

    invoke-static {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;-><init>(I)V

    invoke-virtual {v0, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->OooO0OO(Ljava/lang/String;)V

    new-instance v1, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;-><init>(II)V

    sget-object v2, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOO0O;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/OooOO0O;

    invoke-virtual {v2, v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOO0O;->OooO0Oo(LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;)[LOooO0oo/OooO00o/OooO0O0/OooOOO0;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object p0, v0, v3

    const/4 v0, 0x1

    invoke-static {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0o(LOooO0oo/OooO00o/OooO0O0/OooOOO0;Z)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o0000;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LOooO0oo/OooO00o/OooO0O0/o0000;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static OooOOOo(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public OooO()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0OoO0o:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public OooOO0o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO00:Ljava/lang/String;

    return-object p0
.end method

.method public OooOOO(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "Parameter name"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooO0o(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO0o:[LOooO0oo/OooO00o/OooO0O0/o00000OO;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-interface {v3}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public OooOOo(Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 0

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooOO0o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0OO(Ljava/lang/String;Ljava/nio/charset/Charset;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public OooOOo0(Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 0

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooOO0o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public varargs OooOOoo([LOooO0oo/OooO00o/OooO0O0/o00000OO;)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO0o:[LOooO0oo/OooO00o/OooO0O0/o00000OO;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-interface {v5}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, LOooO0oo/OooO00o/OooO0O0/o00000OO;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0OoO0o:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_3

    const-string v1, "charset"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, LOooO0oo/OooO00o/OooO0O0/o000O00/Oooo0;

    iget-object v4, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0OoO0o:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, LOooO0oo/OooO00o/OooO0O0/o000O00/Oooo0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, LOooO0oo/OooO00o/OooO0O0/o000O00/Oooo0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, LOooO0oo/OooO00o/OooO0O0/o000O00/Oooo0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooOO0o()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [LOooO0oo/OooO00o/OooO0O0/o00000OO;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LOooO0oo/OooO00o/OooO0O0/o00000OO;

    invoke-static {p0, p1, v2}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->OooO0o0(Ljava/lang/String;[LOooO0oo/OooO00o/OooO0O0/o00000OO;Z)LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;-><init>(I)V

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO00:Ljava/lang/String;

    invoke-virtual {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->OooO0OO(Ljava/lang/String;)V

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO0o:[LOooO0oo/OooO00o/OooO0O0/o00000OO;

    if-eqz v1, :cond_0

    const-string v1, "; "

    invoke-virtual {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->OooO0OO(Ljava/lang/String;)V

    sget-object v1, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOO0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/OooOO0;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o000OO0o:[LOooO0oo/OooO00o/OooO0O0/o00000OO;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOO0;->OooO00o(LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;[LOooO0oo/OooO00o/OooO0O0/o00000OO;Z)LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0OoO0o:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->OooO0OO(Ljava/lang/String;)V

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOOO;->o0OoO0o:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->OooO0OO(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

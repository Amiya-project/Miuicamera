.class public final enum Lfy;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfy;

.field public static final enum b:Lfy;

.field public static final enum c:Lfy;

.field public static final enum d:Lfy;

.field public static final enum e:Lfy;

.field public static final enum f:Lfy;

.field public static final enum g:Lfy;

.field public static final enum h:Lfy;

.field public static final enum i:Lfy;

.field public static final enum j:Lfy;

.field public static final enum k:Lfy;

.field public static final enum l:Lfy;

.field public static final enum m:Lfy;

.field public static final enum n:Lfy;

.field public static final enum o:Lfy;

.field public static final enum p:Lfy;

.field public static final enum q:Lfy;

.field public static final enum r:Lfy;

.field private static final synthetic u:[Lfy;


# instance fields
.field public final s:Lfz;

.field private final t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lfy;

    sget-object v1, Lfz;->d:Lfz;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->a:Lfy;

    new-instance v1, Lfy;

    sget-object v2, Lfz;->c:Lfz;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v1, Lfy;->b:Lfy;

    new-instance v2, Lfy;

    sget-object v5, Lfz;->b:Lfz;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v2, Lfy;->c:Lfy;

    new-instance v7, Lfy;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v7, Lfy;->d:Lfy;

    new-instance v9, Lfy;

    sget-object v11, Lfz;->a:Lfz;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v9, Lfy;->e:Lfy;

    new-instance v12, Lfy;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v12, Lfy;->f:Lfy;

    new-instance v14, Lfy;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v14, Lfy;->g:Lfy;

    new-instance v15, Lfy;

    sget-object v13, Lfz;->e:Lfz;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v15, v4, v6, v13, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v15, Lfy;->h:Lfy;

    new-instance v4, Lfy;

    sget-object v13, Lfz;->f:Lfz;

    const-string v6, "STRING"

    const/16 v3, 0x8

    invoke-direct {v4, v6, v3, v13, v8}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v4, Lfy;->i:Lfy;

    new-instance v6, Lfy;

    sget-object v13, Lfz;->i:Lfz;

    const-string v3, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v6, v3, v8, v13, v10}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v6, Lfy;->j:Lfy;

    new-instance v3, Lfy;

    const-string v8, "MESSAGE"

    const/16 v10, 0xa

    move-object/from16 v16, v6

    const/4 v6, 0x2

    invoke-direct {v3, v8, v10, v13, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v3, Lfy;->k:Lfy;

    new-instance v8, Lfy;

    sget-object v13, Lfz;->g:Lfz;

    const-string v10, "BYTES"

    move-object/from16 v17, v3

    const/16 v3, 0xb

    invoke-direct {v8, v10, v3, v13, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v8, Lfy;->l:Lfy;

    new-instance v6, Lfy;

    const-string v10, "UINT32"

    const/16 v13, 0xc

    const/4 v3, 0x0

    invoke-direct {v6, v10, v13, v11, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v6, Lfy;->m:Lfy;

    new-instance v10, Lfy;

    sget-object v13, Lfz;->h:Lfz;

    move-object/from16 v18, v6

    const-string v6, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v10, v6, v8, v13, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v10, Lfy;->n:Lfy;

    new-instance v3, Lfy;

    const-string v6, "SFIXED32"

    const/16 v13, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v6, v13, v11, v8}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v3, Lfy;->o:Lfy;

    new-instance v6, Lfy;

    const-string v8, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v6, v8, v13, v5, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v6, Lfy;->p:Lfy;

    new-instance v3, Lfy;

    const-string v8, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-direct {v3, v8, v13, v11, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v3, Lfy;->q:Lfy;

    new-instance v8, Lfy;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v8, v11, v13, v5, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v8, Lfy;->r:Lfy;

    const/16 v5, 0x12

    new-array v5, v5, [Lfy;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    aput-object v16, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v19, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v10, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v8, v5, v13

    sput-object v5, Lfy;->u:[Lfy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILfz;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfy;->s:Lfz;

    iput p4, p0, Lfy;->t:I

    return-void
.end method

.method public static values()[Lfy;
    .locals 1

    sget-object v0, Lfy;->u:[Lfy;

    invoke-virtual {v0}, [Lfy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfy;

    return-object v0
.end method

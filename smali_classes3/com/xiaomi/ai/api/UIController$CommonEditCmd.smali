.class public final enum Lcom/xiaomi/ai/api/UIController$CommonEditCmd;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ai/api/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommonEditCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ai/api/UIController$CommonEditCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum CLOSE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum COMPLETE_DELETE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum COPY:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum CUT:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum DELETE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum FIND:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum MAXIMIZE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum MAXIMIZE_ALL:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum MINIMIZE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum MINIMIZE_ALL:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum PASTE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum PRINT:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;
    .annotation runtime LOooO0OO/OooO0o0/OooO00o/OooO00o/OooOo;
    .end annotation
.end field

.field public static final enum REDO:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum REPLACE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum RESUME_ZOOM:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum SAVE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum SAVE_AS:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum SELECT_ALL:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum UNDO:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum ZOOM_IN:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

.field public static final enum ZOOM_OUT:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;


# instance fields
.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v1, "PRINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->PRINT:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v1, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v3, "SELECT_ALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->SELECT_ALL:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v3, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v5, "COPY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->COPY:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v5, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v7, "PASTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->PASTE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v7, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v9, "CUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->CUT:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v9, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v11, "DELETE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->DELETE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v11, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v13, "COMPLETE_DELETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->COMPLETE_DELETE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v13, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v15, "SAVE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->SAVE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v15, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v14, "SAVE_AS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->SAVE_AS:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v14, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v12, "FIND"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->FIND:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v12, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v10, "REPLACE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->REPLACE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v10, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v8, "UNDO"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->UNDO:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v8, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v6, "REDO"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->REDO:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v6, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v4, "CLOSE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->CLOSE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v4, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v2, "ZOOM_IN"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->ZOOM_IN:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v2, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v6, "ZOOM_OUT"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->ZOOM_OUT:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v6, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v4, "RESUME_ZOOM"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->RESUME_ZOOM:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v4, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v2, "MINIMIZE"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->MINIMIZE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v2, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v6, "MAXIMIZE"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->MAXIMIZE:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v6, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v4, "MINIMIZE_ALL"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->MINIMIZE_ALL:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    new-instance v4, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const-string v2, "MAXIMIZE_ALL"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->MAXIMIZE_ALL:Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->$VALUES:[Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ai/api/UIController$CommonEditCmd;
    .locals 1

    const-class v0, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ai/api/UIController$CommonEditCmd;
    .locals 1

    sget-object v0, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->$VALUES:[Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    invoke-virtual {v0}, [Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ai/api/UIController$CommonEditCmd;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/ai/api/UIController$CommonEditCmd;->id:I

    return p0
.end method

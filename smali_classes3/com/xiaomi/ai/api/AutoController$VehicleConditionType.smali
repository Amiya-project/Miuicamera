.class public final enum Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ai/api/AutoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VehicleConditionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum AVERAGE_ENERGY_CONSUMPTION:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum BATTERY:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum COMPREHENSIVE_ENDURANCE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum ECU_AND_SENSOR_FAULT:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum ENERGY:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum EV_ENDURANCE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum FUEL_ENDURANCE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum MILEAGE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum SERVICE_CYCLE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum TOTAL_ENDURANCE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum TOTAL_ENERGY_CONSUMPTION:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum TRAVEL_TIME:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum TYRE_CONDITION:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum TYRE_PRESSURE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum TYRE_TEMPERATURE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

.field public static final enum UNKNOWN:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;
    .annotation runtime LOooO0OO/OooO0o0/OooO00o/OooO00o/OooOo;
    .end annotation
.end field

.field public static final enum VEHICLE_CONFIGURATION:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;


# instance fields
.field private id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->UNKNOWN:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v1, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v3, "COMPREHENSIVE_ENDURANCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->COMPREHENSIVE_ENDURANCE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v3, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v5, "TOTAL_ENDURANCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->TOTAL_ENDURANCE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v5, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v7, "EV_ENDURANCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->EV_ENDURANCE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v7, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v9, "FUEL_ENDURANCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->FUEL_ENDURANCE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v9, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v11, "TYRE_PRESSURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->TYRE_PRESSURE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v11, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v13, "TYRE_TEMPERATURE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->TYRE_TEMPERATURE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v13, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v15, "TYRE_CONDITION"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->TYRE_CONDITION:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v15, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v14, "MILEAGE"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->MILEAGE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v14, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v12, "TOTAL_ENERGY_CONSUMPTION"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->TOTAL_ENERGY_CONSUMPTION:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v12, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v10, "AVERAGE_ENERGY_CONSUMPTION"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->AVERAGE_ENERGY_CONSUMPTION:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v10, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v8, "TRAVEL_TIME"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->TRAVEL_TIME:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v8, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v6, "SERVICE_CYCLE"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->SERVICE_CYCLE:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v6, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v4, "ECU_AND_SENSOR_FAULT"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v2}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->ECU_AND_SENSOR_FAULT:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v4, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v2, "BATTERY"

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v8}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->BATTERY:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v2, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v8, "VEHICLE_CONFIGURATION"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v2, v8, v4, v6}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->VEHICLE_CONFIGURATION:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    new-instance v8, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const-string v6, "ENERGY"

    move-object/from16 v20, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v4}, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->ENERGY:Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const/16 v6, 0x11

    new-array v6, v6, [Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    aput-object v20, v6, v4

    aput-object v8, v6, v2

    sput-object v6, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->$VALUES:[Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

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

    iput p3, p0, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;
    .locals 1

    const-class v0, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;
    .locals 1

    sget-object v0, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->$VALUES:[Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    invoke-virtual {v0}, [Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/ai/api/AutoController$VehicleConditionType;->id:I

    return p0
.end method

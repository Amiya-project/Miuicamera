.class public final enum Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

.field public static final enum MAX_MIN:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

.field public static final enum MIN_MAX:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    const-string v1, "MAX_MIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MAX_MIN:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    new-instance v1, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    const-string v3, "MIN_MAX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->MIN_MAX:Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->$VALUES:[Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->$VALUES:[Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/charts/AxisOrientation;

    return-object v0
.end method

.class public final enum Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

.field public static final enum GRAY:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

.field public static final enum TRANS:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    const-string v1, "GRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;->GRAY:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    new-instance v1, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    const-string v3, "TRANS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;->TRANS:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;->$VALUES:[Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;
    .locals 1

    sget-object v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;->$VALUES:[Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    invoke-virtual {v0}, [Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;

    return-object v0
.end method

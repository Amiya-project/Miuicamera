.class public Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/LevelBeautyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LevelItem"
.end annotation


# instance fields
.field private mText:Ljava/lang/String;

.field private mTextResource:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;->mTextResource:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;->mText:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;->mText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getTextResource()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/beauty/LevelBeautyAdapter$LevelItem;->mTextResource:I

    return p0
.end method

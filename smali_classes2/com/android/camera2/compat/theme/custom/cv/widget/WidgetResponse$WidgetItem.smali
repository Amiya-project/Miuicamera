.class public Lcom/android/camera2/compat/theme/custom/cv/widget/WidgetResponse$WidgetItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/compat/theme/custom/cv/widget/WidgetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetItem"
.end annotation


# instance fields
.field public mItemId:Ljava/lang/Integer;

.field public mWidgetIcon:Ljava/lang/Integer;

.field public mWidgetInfo:Ljava/lang/String;

.field public mWidgetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widgetName",
            "widgetIcon",
            "widgetInfo",
            "itemId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera2/compat/theme/custom/cv/widget/WidgetResponse$WidgetItem;->mWidgetIcon:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/camera2/compat/theme/custom/cv/widget/WidgetResponse$WidgetItem;->mWidgetName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera2/compat/theme/custom/cv/widget/WidgetResponse$WidgetItem;->mWidgetInfo:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera2/compat/theme/custom/cv/widget/WidgetResponse$WidgetItem;->mItemId:Ljava/lang/Integer;

    return-void
.end method

.class public Lmiuix/pickerwidget/date/DateUtils$1;
.super Lmiuix/core/util/Pools$Manager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/date/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/Pools$Manager<",
        "Lmiuix/pickerwidget/date/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/core/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiuix/pickerwidget/date/DateUtils$1;->createInstance()Lmiuix/pickerwidget/date/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public createInstance()Lmiuix/pickerwidget/date/Calendar;
    .locals 0

    new-instance p0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    return-object p0
.end method

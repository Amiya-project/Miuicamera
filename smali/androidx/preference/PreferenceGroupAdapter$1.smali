.class public Landroidx/preference/PreferenceGroupAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/preference/PreferenceGroupAdapter;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroupAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter$1;->this$0:Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$1;->this$0:Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    return-void
.end method

.class public Lcom/android/camera/fragment/BaseFragmentUseGuide$PlayerItemChangeListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/videoplayer/manager/PlayerItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/BaseFragmentUseGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerItemChangeListenerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerItemChanged(Lcom/android/camera/videoplayer/meta/MetaData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metaData"
        }
    .end annotation

    return-void
.end method

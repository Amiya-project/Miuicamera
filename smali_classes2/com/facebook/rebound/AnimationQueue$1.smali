.class public Lcom/facebook/rebound/AnimationQueue$1;
.super Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/AnimationQueue;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/facebook/rebound/AnimationQueue;


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/AnimationQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/rebound/AnimationQueue$1;->this$0:Lcom/facebook/rebound/AnimationQueue;

    invoke-direct {p0}, Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p0, p0, Lcom/facebook/rebound/AnimationQueue$1;->this$0:Lcom/facebook/rebound/AnimationQueue;

    invoke-static {p0, p1, p2}, Lcom/facebook/rebound/AnimationQueue;->access$000(Lcom/facebook/rebound/AnimationQueue;J)V

    return-void
.end method

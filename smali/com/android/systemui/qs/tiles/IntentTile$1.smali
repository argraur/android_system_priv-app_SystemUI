.class Lcom/android/systemui/qs/tiles/IntentTile$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/IntentTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/IntentTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/IntentTile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/IntentTile;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/IntentTile$1;->this$0:Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile$1;->this$0:Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/IntentTile;->-wrap0(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/Object;)V

    .line 174
    return-void
.end method

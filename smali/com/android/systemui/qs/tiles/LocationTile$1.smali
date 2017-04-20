.class Lcom/android/systemui/qs/tiles/LocationTile$1;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->-get3(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 81
    .local v0, "wasEnabled":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->-get2(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->openPanels()V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->getMetricsCategory()I

    move-result v5

    if-eqz v0, :cond_3b

    move v1, v2

    :goto_2c
    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$1;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v1

    if-eqz v0, :cond_3d

    :goto_37
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    .line 79
    return-void

    :cond_3b
    move v1, v3

    .line 82
    goto :goto_2c

    :cond_3d
    move v2, v3

    .line 83
    goto :goto_37
.end method

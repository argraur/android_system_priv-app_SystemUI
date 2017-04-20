.class Lcom/android/systemui/statusbar/phone/AutoTileManager$3;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHotspotChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_29

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    const-string/jumbo v1, "hotspot"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->addTile(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "QsHotspotAdded"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get3(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$3$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    :cond_29
    return-void
.end method

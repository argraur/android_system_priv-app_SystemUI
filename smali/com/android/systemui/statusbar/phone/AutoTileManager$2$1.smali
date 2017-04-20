.class Lcom/android/systemui/statusbar/phone/AutoTileManager$2$1;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->onDataSaverChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$2$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$2;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get2(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->remListener(Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;)V

    .line 107
    return-void
.end method

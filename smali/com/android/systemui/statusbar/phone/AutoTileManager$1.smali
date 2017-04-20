.class Lcom/android/systemui/statusbar/phone/AutoTileManager$1;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


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
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagedProfileChanged()V
    .registers 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getManagedProfileController()Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->hasActiveProfile()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    const-string/jumbo v1, "work"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->addTile(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "QsWorkAdded"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get3(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :cond_37
    return-void
.end method

.method public onManagedProfileRemoved()V
    .registers 1

    .prologue
    .line 93
    return-void
.end method

.class Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->onManagedProfileChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getManagedProfileController()Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get6(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->removeCallback(Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;)V

    .line 84
    return-void
.end method

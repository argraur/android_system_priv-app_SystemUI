.class Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;
.super Landroid/content/BroadcastReceiver;
.source "ManagedProfileController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ManagedProfileController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->-wrap0(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$1;->this$0:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->-get0(Lcom/android/systemui/statusbar/phone/ManagedProfileController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    .line 138
    .local v0, "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileChanged()V

    goto :goto_f

    .line 135
    .end local v0    # "callback":Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;
    :cond_1f
    return-void
.end method

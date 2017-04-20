.class Lcom/android/systemui/recents/Recents$3;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;

.field final synthetic val$event:Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;
    .param p2, "val$event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    iput-object p2, p0, Lcom/android/systemui/recents/Recents$3;->val$event:Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents$3;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v1}, Lcom/android/systemui/recents/Recents;->-get2(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents$3;->val$event:Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    iget-boolean v2, v2, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->updateRecentsVisibility(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 599
    :goto_d
    return-void

    .line 602
    :catch_e
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Callback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

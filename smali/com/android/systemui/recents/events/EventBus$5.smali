.class Lcom/android/systemui/recents/events/EventBus$5;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/events/EventBus;->queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/events/EventBus;

.field final synthetic val$event:Lcom/android/systemui/recents/events/EventBus$Event;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/recents/events/EventBus;
    .param p2, "val$event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/systemui/recents/events/EventBus$5;->this$0:Lcom/android/systemui/recents/events/EventBus;

    iput-object p2, p0, Lcom/android/systemui/recents/events/EventBus$5;->val$event:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/systemui/recents/events/EventBus$5;->val$event:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {v0}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    .line 845
    return-void
.end method

.class public Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DeleteTaskDataEvent.java"


# instance fields
.field public final task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;)V
    .registers 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 30
    return-void
.end method

.class public Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "MultiWindowStateChangedEvent.java"


# instance fields
.field public final inMultiWindow:Z

.field public final showDeferredAnimation:Z

.field public final stack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method public constructor <init>(ZZLcom/android/systemui/recents/model/TaskStack;)V
    .registers 4
    .param p1, "inMultiWindow"    # Z
    .param p2, "showDeferredAnimation"    # Z
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    .line 35
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    .line 36
    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    .line 33
    return-void
.end method

.class public Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskEvent.java"


# instance fields
.field public final screenPinningRequested:Z

.field public final targetTaskBounds:Landroid/graphics/Rect;

.field public final targetTaskStack:I

.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V
    .registers 6
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "targetTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "targetTaskStack"    # I
    .param p5, "screenPinningRequested"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 41
    iput p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskStack:I

    .line 42
    iput-boolean p5, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    .line 37
    return-void
.end method

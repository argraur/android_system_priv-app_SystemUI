.class Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$2;
.super Ljava/lang/Object;
.source "RecentsTvTransitionHelper.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$2;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .registers 3

    .prologue
    .line 74
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 73
    return-void
.end method

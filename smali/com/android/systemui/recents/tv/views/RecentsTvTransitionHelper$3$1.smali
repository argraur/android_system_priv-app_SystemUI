.class Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3$1;
.super Ljava/lang/Object;
.source "RecentsTvTransitionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3;

.field final synthetic val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3;
    .param p2, "val$animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3$1;->this$1:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3;

    iput-object p2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3$1;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3$1;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$3$1;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-interface {v0}, Landroid/app/ActivityOptions$OnAnimationStartedListener;->onAnimationStarted()V

    .line 123
    :cond_9
    return-void
.end method
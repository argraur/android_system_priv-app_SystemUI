.class public Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ShowStackActionButtonEvent.java"


# instance fields
.field public final translate:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .param p1, "translate"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;->translate:Z

    .line 29
    return-void
.end method

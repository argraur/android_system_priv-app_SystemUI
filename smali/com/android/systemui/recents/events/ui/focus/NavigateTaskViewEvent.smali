.class public Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "NavigateTaskViewEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    }
.end annotation


# instance fields
.field public direction:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;)V
    .registers 2
    .param p1, "direction"    # Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;->direction:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    .line 31
    return-void
.end method

.method public static getDirectionFromKeyCode(I)Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 36
    packed-switch p0, :pswitch_data_12

    .line 46
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UNDEFINED:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    .line 38
    :pswitch_6
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->UP:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    .line 40
    :pswitch_9
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->DOWN:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    .line 42
    :pswitch_c
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->LEFT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    .line 44
    :pswitch_f
    sget-object v0, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->RIGHT:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    return-object v0

    .line 36
    :pswitch_data_12
    .packed-switch 0x13
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

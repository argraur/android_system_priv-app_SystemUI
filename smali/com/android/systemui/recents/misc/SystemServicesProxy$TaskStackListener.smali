.class public abstract Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaskStackListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .registers 1

    .prologue
    .line 153
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onActivityPinned()V
    .registers 1

    .prologue
    .line 149
    return-void
.end method

.method public onPinnedActivityRestartAttempt()V
    .registers 1

    .prologue
    .line 150
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .registers 1

    .prologue
    .line 151
    return-void
.end method

.method public onTaskStackChanged()V
    .registers 1

    .prologue
    .line 148
    return-void
.end method

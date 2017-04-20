.class public final Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSkipBouncer:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mListening:Z

.field private mOccluded:Z

.field private mSecure:Z

.field private mShowing:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCurrentUser:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->updateCanSkipBouncerState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 46
    return-void
.end method

.method private notifyKeyguardChanged()V
    .registers 4

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 131
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;->onKeyguardChanged()V

    goto :goto_6

    .line 129
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
    :cond_16
    return-void
.end method

.method private updateCanSkipBouncerState()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCanSkipBouncer:Z

    .line 125
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mListening:Z

    if-eqz v0, :cond_12

    .line 58
    :cond_11
    :goto_11
    return-void

    .line 61
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mListening:Z

    .line 62
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCurrentUser:I

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->updateCanSkipBouncerState()V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    goto :goto_11
.end method

.method public canSkipBouncer()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCanSkipBouncer:Z

    return v0
.end method

.method public isDeviceInteractive()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    return v0
.end method

.method public isOccluded()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mOccluded:Z

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mSecure:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mShowing:Z

    return v0
.end method

.method public notifyKeyguardState(ZZZ)V
    .registers 5
    .param p1, "showing"    # Z
    .param p2, "secure"    # Z
    .param p3, "occluded"    # Z

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mShowing:Z

    if-ne v0, p1, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mSecure:Z

    if-ne v0, p2, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mOccluded:Z

    if-ne v0, p3, :cond_d

    return-void

    .line 109
    :cond_d
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mShowing:Z

    .line 110
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mSecure:Z

    .line 111
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mOccluded:Z

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardChanged()V

    .line 107
    return-void
.end method

.method public onTrustChanged(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->updateCanSkipBouncerState()V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardChanged()V

    .line 116
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mListening:Z

    if-eqz v0, :cond_21

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mListening:Z

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 69
    :cond_21
    return-void
.end method

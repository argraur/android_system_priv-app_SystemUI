.class public Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;
.super Ljava/lang/Object;
.source "PlatformVelocityTracker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 29
    sput-object v0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;
    .registers 2

    .prologue
    .line 35
    sget-object v1, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;

    .line 36
    .local v0, "tracker":Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;
    if-nez v0, :cond_f

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;

    .end local v0    # "tracker":Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;-><init>()V

    .line 39
    .restart local v0    # "tracker":Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;
    :cond_f
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->setTracker(Landroid/view/VelocityTracker;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 48
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3
    .param p1, "units"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 53
    return-void
.end method

.method public getXVelocity()F
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 70
    sget-object v0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public setTracker(Landroid/view/VelocityTracker;)V
    .registers 2
    .param p1, "tracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PlatformVelocityTracker;->mTracker:Landroid/view/VelocityTracker;

    .line 43
    return-void
.end method

.class public Lcom/android/systemui/statusbar/notification/ProgressTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "ProgressTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/ProgressTransformState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 26
    sput-object v0, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    .registers 2

    .prologue
    .line 38
    sget-object v1, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    .line 39
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    if-eqz v0, :cond_b

    .line 40
    return-object v0

    .line 42
    :cond_b
    new-instance v1, Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;-><init>()V

    return-object v1
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .registers 3
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 31
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    if-eqz v0, :cond_6

    .line 32
    const/4 v0, 0x1

    return v0

    .line 34
    :cond_6
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    return v0
.end method

.class Lcom/android/systemui/statusbar/policy/DeadZone$1;
.super Ljava/lang/Object;
.source "DeadZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DeadZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DeadZone;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DeadZone;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/DeadZone;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeadZone$1;->this$0:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeadZone$1;->this$0:Lcom/android/systemui/statusbar/policy/DeadZone;

    const-string/jumbo v1, "flash"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1a

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 62
    return-void

    .line 63
    nop

    :array_1a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

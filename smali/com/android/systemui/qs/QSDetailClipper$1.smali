.class Lcom/android/systemui/qs/QSDetailClipper$1;
.super Ljava/lang/Object;
.source "QSDetailClipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailClipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailClipper;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailClipper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetailClipper;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->-get0(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->-get1(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailClipper$1;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-static {v1}, Lcom/android/systemui/qs/QSDetailClipper;->-get0(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 77
    :cond_23
    return-void
.end method

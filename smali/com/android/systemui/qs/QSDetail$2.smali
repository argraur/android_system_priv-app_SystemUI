.class Lcom/android/systemui/qs/QSDetail$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 311
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->-set0(Lcom/android/systemui/qs/QSDetail;Z)Z

    .line 313
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-wrap0(Lcom/android/systemui/qs/QSDetail;)V

    .line 308
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get1(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 320
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get6(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-get3(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    .line 323
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/QSDetail;->-set0(Lcom/android/systemui/qs/QSDetail;Z)Z

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$2;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->-wrap0(Lcom/android/systemui/qs/QSDetail;)V

    .line 317
    return-void
.end method

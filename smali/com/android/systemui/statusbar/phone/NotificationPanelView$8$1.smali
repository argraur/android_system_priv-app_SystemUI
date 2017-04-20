.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$8$1;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;->onInflated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 255
    sub-int v0, p5, p3

    .line 256
    .local v0, "height":I
    sub-int v1, p9, p7

    .line 257
    .local v1, "oldHeight":I
    if-eq v0, v1, :cond_d

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8$1;->this$1:Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    .line 254
    :cond_d
    return-void
.end method

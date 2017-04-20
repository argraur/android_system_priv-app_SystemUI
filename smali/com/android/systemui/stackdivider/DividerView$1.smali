.class Lcom/android/systemui/stackdivider/DividerView$1;
.super Landroid/os/Handler;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 174
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 168
    :goto_8
    return-void

    .line 171
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$1;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_8

    .line 169
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

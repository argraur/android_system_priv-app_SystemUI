.class Lcom/android/systemui/statusbar/ServiceMonitor$1;
.super Landroid/os/Handler;
.source "ServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ServiceMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ServiceMonitor;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 70
    :goto_5
    return-void

    .line 73
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap5(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    goto :goto_5

    .line 76
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap2(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    goto :goto_5

    .line 79
    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap6(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    goto :goto_5

    .line 82
    :pswitch_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap3(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/content/Intent;)V

    goto :goto_5

    .line 85
    :pswitch_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap1(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    goto :goto_5

    .line 88
    :pswitch_28
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap4(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/content/ComponentName;)V

    goto :goto_5

    .line 71
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method

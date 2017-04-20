.class Lcom/android/systemui/recents/RecentsImplProxy$1;
.super Landroid/os/Handler;
.source "RecentsImplProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImplProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImplProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImplProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsImplProxy;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_d4

    .line 160
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 162
    :goto_a
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    return-void

    .line 125
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    goto :goto_a

    .line 128
    :pswitch_18
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    goto :goto_a

    .line 131
    :pswitch_22
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 132
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v1, :cond_4a

    move v1, v5

    :goto_31
    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v2, :cond_4c

    move v2, v5

    :goto_36
    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz v3, :cond_4e

    move v3, v5

    .line 133
    :goto_3b
    iget v4, v7, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v4, :cond_50

    move v4, v5

    :goto_40
    iget v8, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz v8, :cond_52

    :goto_44
    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    goto :goto_a

    :cond_4a
    move v1, v6

    goto :goto_31

    :cond_4c
    move v2, v6

    goto :goto_36

    :cond_4e
    move v3, v6

    goto :goto_3b

    :cond_50
    move v4, v6

    .line 133
    goto :goto_40

    :cond_52
    move v5, v6

    goto :goto_44

    .line 136
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_54
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_67

    move v0, v5

    :goto_5f
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_69

    :goto_63
    invoke-virtual {v1, v0, v5}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZ)V

    goto :goto_a

    :cond_67
    move v0, v6

    goto :goto_5f

    :cond_69
    move v5, v6

    goto :goto_63

    .line 139
    :pswitch_6b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 140
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    goto :goto_a

    .line 143
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7b
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    goto :goto_a

    .line 146
    :pswitch_85
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 147
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput v6, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 148
    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v1, v2, v3, v6, v0}, Lcom/android/systemui/recents/RecentsImpl;->dockTopTask(IIILandroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 151
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9e
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecents(F)V

    goto/16 :goto_a

    .line 154
    :pswitch_b1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecentsEnded(F)V

    goto/16 :goto_a

    .line 157
    :pswitch_c4
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImplProxy$1;->this$0:Lcom/android/systemui/recents/RecentsImplProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsImplProxy;->-get0(Lcom/android/systemui/recents/RecentsImplProxy;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->onShowCurrentUserToast(II)V

    goto/16 :goto_a

    .line 123
    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_18
        :pswitch_22
        :pswitch_54
        :pswitch_6b
        :pswitch_7b
        :pswitch_85
        :pswitch_9e
        :pswitch_b1
        :pswitch_c4
    .end packed-switch
.end method

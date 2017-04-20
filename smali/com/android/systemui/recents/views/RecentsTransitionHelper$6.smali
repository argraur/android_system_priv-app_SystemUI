.class Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;
.super Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;
.source "RecentsTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Landroid/view/IAppTransitionAnimationSpecsFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

.field final synthetic val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper;
    .param p2, "val$composer"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-direct {p0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public get()[Landroid/view/AppTransitionAnimationSpec;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 239
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get3(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6$1;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->val$composer:Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6$1;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    monitor-enter v3

    .line 249
    :goto_14
    :try_start_14
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get0()Ljava/util/List;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_52

    move-result-object v4

    if-ne v2, v4, :cond_28

    .line 251
    :try_start_20
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_52

    goto :goto_14

    .line 252
    :catch_26
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_14

    .line 254
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_52

    move-result-object v2

    if-nez v2, :cond_32

    monitor-exit v3

    .line 255
    return-object v5

    .line 258
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Landroid/view/AppTransitionAnimationSpec;

    .line 259
    .local v1, "specs":[Landroid/view/AppTransitionAnimationSpec;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 260
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;->this$0:Lcom/android/systemui/recents/views/RecentsTransitionHelper;

    invoke-static {}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-get0()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->-set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_52

    monitor-exit v3

    .line 261
    return-object v1

    .line 248
    .end local v1    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    :catchall_52
    move-exception v2

    monitor-exit v3

    throw v2
.end method

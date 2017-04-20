.class Lcom/android/systemui/stackdivider/WindowManagerProxy$6;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/WindowManagerProxy;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get3(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_28

    .line 139
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get8(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get13(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_25

    :try_start_16
    monitor-exit v2

    .line 141
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get8(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    .line 141
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 136
    :goto_24
    return-void

    .line 138
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_28} :catch_28

    .line 143
    :catch_28
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WindowManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set touchable region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.class Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;
.super Ljava/lang/Object;
.source "TakeScreenshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

.field final synthetic val$callback:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/systemui/screenshot/TakeScreenshotService$1;
    .param p2, "val$callback"    # Landroid/os/Messenger;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;->this$1:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 42
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 44
    .local v1, "reply":Landroid/os/Message;
    :try_start_6
    iget-object v2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 41
    :goto_b
    return-void

    .line 45
    :catch_c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_b
.end method

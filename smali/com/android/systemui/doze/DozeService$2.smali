.class Lcom/android/systemui/doze/DozeService$2;
.super Landroid/database/ContentObserver;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 408
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eq p3, v1, :cond_7

    .line 409
    return-void

    .line 411
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->-get11(Lcom/android/systemui/doze/DozeService;)[Lcom/android/systemui/doze/DozeService$TriggerSensor;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_f
    if-ge v1, v3, :cond_19

    aget-object v0, v2, v1

    .line 412
    .local v0, "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->updateListener()V

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 407
    .end local v0    # "s":Lcom/android/systemui/doze/DozeService$TriggerSensor;
    :cond_19
    return-void
.end method

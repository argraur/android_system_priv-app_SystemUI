.class Lcom/android/systemui/qs/QSFooter$H;
.super Landroid/os/Handler;
.source "QSFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooter;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    .line 310
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 309
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSFooter$H;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooter;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSFooter$H;-><init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 315
    const/4 v1, 0x0

    .line 317
    .local v1, "name":Ljava/lang/String;
    :try_start_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 318
    const-string/jumbo v1, "handleRefreshState"

    .line 319
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->-wrap1(Lcom/android/systemui/qs/QSFooter;)V

    .line 314
    .end local v1    # "name":Ljava/lang/String;
    :cond_e
    :goto_e
    return-void

    .line 320
    .local v1, "name":Ljava/lang/String;
    :cond_f
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_e

    .line 321
    const-string/jumbo v1, "handleClick"

    .line 322
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->-wrap0(Lcom/android/systemui/qs/QSFooter;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_1c

    goto :goto_e

    .line 324
    .end local v1    # "name":Ljava/lang/String;
    :catch_1c
    move-exception v2

    .line 325
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v3, "QSFooter"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->-get8(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

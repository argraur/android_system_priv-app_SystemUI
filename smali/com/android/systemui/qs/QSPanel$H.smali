.class Lcom/android/systemui/qs/QSPanel$H;
.super Landroid/os/Handler;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$H;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_16

    .line 528
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSPanel$Record;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_14

    :goto_10
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V

    .line 526
    :cond_13
    :goto_13
    return-void

    :cond_14
    move v1, v2

    .line 528
    goto :goto_10

    .line 529
    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 530
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$H;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method

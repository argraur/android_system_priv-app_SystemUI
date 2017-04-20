.class Lcom/android/systemui/qs/QSTileBaseView$H;
.super Landroid/os/Handler;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileBaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileBaseView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSTileBaseView;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileBaseView$H;->this$0:Lcom/android/systemui/qs/QSTileBaseView;

    .line 183
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 182
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView$H;->this$0:Lcom/android/systemui/qs/QSTileBaseView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 187
    :cond_e
    return-void
.end method

.class Lcom/android/systemui/statusbar/NotificationGuts$4;
.super Ljava/lang/Object;
.source "NotificationGuts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationGuts;->bindSlider(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$4;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGuts$4;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$4;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-get0(Lcom/android/systemui/statusbar/NotificationGuts;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_b
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-set0(Lcom/android/systemui/statusbar/NotificationGuts;Z)Z

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$4;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-wrap0(Lcom/android/systemui/statusbar/NotificationGuts;)V

    .line 325
    return-void

    .line 326
    :cond_14
    const/4 v0, 0x1

    goto :goto_b
.end method

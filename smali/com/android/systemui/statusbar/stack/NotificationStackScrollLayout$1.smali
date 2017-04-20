.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap9(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap7(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;
.super Ljava/lang/Object;
.source "StatusBarWindowView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field final synthetic val$mode:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/internal/view/FloatingActionMode;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p2, "val$mode"    # Lcom/android/internal/view/FloatingActionMode;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow()V

    .line 365
    const/4 v0, 0x1

    return v0
.end method

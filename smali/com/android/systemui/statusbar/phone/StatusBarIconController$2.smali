.class Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;->animateHide(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .param p2, "val$v"    # Landroid/view/View;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$2;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    return-void
.end method

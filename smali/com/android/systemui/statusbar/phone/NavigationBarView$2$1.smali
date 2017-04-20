.class Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->onDockedStackExistsChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

.field final synthetic val$exists:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView$2;Z)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NavigationBarView$2;
    .param p2, "val$exists"    # Z

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->val$exists:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->val$exists:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->-set0(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->-wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 500
    return-void
.end method

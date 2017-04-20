.class Lcom/android/systemui/stackdivider/Divider$1;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->updateVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p2, "val$visible"    # Z

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get4(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    if-eq v0, v1, :cond_2e

    .line 101
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->-set2(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 102
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->val$visible:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/Divider$1;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/Divider;->-get2(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(Z)V

    .line 99
    :cond_2e
    return-void

    .line 102
    :cond_2f
    const/4 v0, 0x4

    goto :goto_1c
.end method

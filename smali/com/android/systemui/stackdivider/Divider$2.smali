.class Lcom/android/systemui/stackdivider/Divider$2;
.super Ljava/lang/Object;
.source "Divider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/Divider;->updateMinimizedDockedStack(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/Divider;

.field final synthetic val$animDuration:J

.field final synthetic val$minimized:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/Divider;ZJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/Divider;
    .param p2, "val$minimized"    # Z
    .param p3, "val$animDuration"    # J

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    iput-wide p3, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$animDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get2(Lcom/android/systemui/stackdivider/Divider;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    if-eq v0, v1, :cond_2b

    .line 116
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/Divider;->-set1(Lcom/android/systemui/stackdivider/Divider;Z)Z

    .line 117
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-wrap2(Lcom/android/systemui/stackdivider/Divider;)V

    .line 118
    iget-wide v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$animDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 119
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    iget-wide v2, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$animDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(ZJ)V

    .line 114
    :cond_2b
    :goto_2b
    return-void

    .line 121
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/stackdivider/Divider$2;->this$0:Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/Divider;->-get3(Lcom/android/systemui/stackdivider/Divider;)Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/Divider$2;->val$minimized:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->setMinimizedDockStack(Z)V

    goto :goto_2b
.end method

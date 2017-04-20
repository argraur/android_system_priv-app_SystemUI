.class Lcom/google/android/systemui/OpaLayout$2;
.super Ljava/lang/Object;
.source "OpaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/OpaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/systemui/OpaLayout;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$2;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$2;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0}, Lcom/google/android/systemui/OpaLayout;->-wrap0(Lcom/google/android/systemui/OpaLayout;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$2;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0}, Lcom/google/android/systemui/OpaLayout;->-wrap3(Lcom/google/android/systemui/OpaLayout;)V

    .line 104
    return-void
.end method

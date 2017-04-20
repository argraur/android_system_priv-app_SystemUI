.class final synthetic Lcom/google/android/systemui/OpaLayout$-void_setOnLongClickListener_android_view_View$OnLongClickListener_l_LambdaImpl0;
.super Ljava/lang/Object;
.source "OpaLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/OpaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_setOnLongClickListener_android_view_View$OnLongClickListener_l_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$l:Landroid/view/View$OnLongClickListener;

.field private synthetic val$this:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/OpaLayout;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$-void_setOnLongClickListener_android_view_View$OnLongClickListener_l_LambdaImpl0;->val$this:Lcom/google/android/systemui/OpaLayout;

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout$-void_setOnLongClickListener_android_view_View$OnLongClickListener_l_LambdaImpl0;->val$l:Landroid/view/View$OnLongClickListener;

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$-void_setOnLongClickListener_android_view_View$OnLongClickListener_l_LambdaImpl0;->val$this:Lcom/google/android/systemui/OpaLayout;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout$-void_setOnLongClickListener_android_view_View$OnLongClickListener_l_LambdaImpl0;->val$l:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/systemui/OpaLayout;->-com_google_android_systemui_OpaLayout_lambda$1(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

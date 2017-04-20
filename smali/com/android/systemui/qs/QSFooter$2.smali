.class Lcom/android/systemui/qs/QSFooter$2;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->-get7(Lcom/android/systemui/qs/QSFooter;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->-get6(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->-get7(Lcom/android/systemui/qs/QSFooter;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 292
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->-get12(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->-get11(Lcom/android/systemui/qs/QSFooter;)Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v1

    :goto_28
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->-get2(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->-get10(Lcom/android/systemui/qs/QSFooter;)Z

    move-result v0

    if-eqz v0, :cond_52

    move v0, v1

    :goto_3a
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooter;->-get3(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$2;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->-get9(Lcom/android/systemui/qs/QSFooter;)Z

    move-result v3

    if-eqz v3, :cond_54

    :goto_4b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    return-void

    .line 292
    :cond_4f
    const/16 v0, 0x8

    goto :goto_28

    :cond_52
    move v0, v2

    .line 293
    goto :goto_3a

    :cond_54
    move v1, v2

    .line 294
    goto :goto_4b
.end method

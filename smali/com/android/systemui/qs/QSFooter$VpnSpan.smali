.class public Lcom/android/systemui/qs/QSFooter$VpnSpan;
.super Landroid/text/style/ClickableSpan;
.source "QSFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VpnSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooter;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/QSFooter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$VpnSpan;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.VPN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter$VpnSpan;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSFooter;->-get1(Lcom/android/systemui/qs/QSFooter;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter$VpnSpan;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSFooter;->-get0(Lcom/android/systemui/qs/QSFooter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.class Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;
.super Landroid/database/DataSetObserver;
.source "KeyguardUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->-wrap0(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V

    .line 238
    return-void
.end method

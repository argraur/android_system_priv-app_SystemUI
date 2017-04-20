.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final USER_SETTINGS_INTENT:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    .line 775
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 786
    instance-of v1, p2, Lcom/android/systemui/qs/tiles/UserDetailView;

    if-nez v1, :cond_12

    .line 787
    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lcom/android/systemui/qs/tiles/UserDetailView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/tiles/UserDetailView;

    move-result-object v0

    .line 788
    .local v0, "v":Lcom/android/systemui/qs/tiles/UserDetailView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/UserDetailView;->createAndSetAdapter(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 792
    :goto_e
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UserDetailView;->refreshAdapter()V

    .line 793
    return-object v0

    .end local v0    # "v":Lcom/android/systemui/qs/tiles/UserDetailView;
    :cond_12
    move-object v0, p2

    .line 790
    check-cast v0, Lcom/android/systemui/qs/tiles/UserDetailView;

    .restart local v0    # "v":Lcom/android/systemui/qs/tiles/UserDetailView;
    goto :goto_e
.end method

.method public getMetricsCategory()I
    .registers 2

    .prologue
    .line 812
    const/16 v0, 0x7d

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f02b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 803
    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 807
    return-void
.end method

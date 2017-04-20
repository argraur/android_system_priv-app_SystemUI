.class Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;
.super Ljava/lang/Object;
.source "SettingsDrawerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;


# direct methods
.method constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-static {v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get0(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)Lcom/android/settingslib/drawer/SettingsDrawerAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settingslib/drawer/SettingsDrawerAdapter;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onTileClicked(Lcom/android/settingslib/drawer/Tile;)V

    .line 114
    return-void
.end method

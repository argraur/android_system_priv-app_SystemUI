.class Lcom/android/systemui/qs/tiles/ColorInversionTile$1;
.super Lcom/android/systemui/qs/SecureSetting;
.source "ColorInversionTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ColorInversionTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ColorInversionTile;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$1;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->-wrap0(Lcom/android/systemui/qs/tiles/ColorInversionTile;Ljava/lang/Object;)V

    .line 49
    return-void
.end method
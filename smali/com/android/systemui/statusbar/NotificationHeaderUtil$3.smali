.class final Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;
.super Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentData"    # Ljava/lang/Object;
    .param p4, "childData"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;->hasSameIcon(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 56
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;->hasSameColor(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 55
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityApplicator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "apply"    # Z

    .prologue
    .line 370
    if-eqz p2, :cond_8

    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 369
    return-void

    .line 370
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.class final Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;


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
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyToChild(Landroid/view/View;ZI)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shouldApply"    # Z
    .param p3, "originalColor"    # I

    .prologue
    .line 72
    const/4 v2, -0x1

    if-eq p3, v2, :cond_23

    move-object v1, p1

    .line 73
    check-cast v1, Landroid/widget/ImageView;

    .line 74
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 75
    if-eqz p2, :cond_24

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 78
    const v3, 0x1060052

    .line 77
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 79
    .local v0, "grey":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    .end local v0    # "grey":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_23
    :goto_23
    return-void

    .line 82
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_24
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 83
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 82
    invoke-virtual {v2, p3, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_23
.end method


# virtual methods
.method public apply(Landroid/view/View;Z)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "apply"    # Z

    .prologue
    move-object v1, p1

    .line 62
    check-cast v1, Landroid/view/NotificationHeaderView;

    .line 64
    .local v1, "header":Landroid/view/NotificationHeaderView;
    const v3, 0x1020006

    .line 63
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 66
    .local v2, "icon":Landroid/widget/ImageView;
    const v3, 0x10203b5

    .line 65
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .local v0, "expand":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v3

    invoke-direct {p0, v2, p2, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;->applyToChild(Landroid/view/View;ZI)V

    .line 68
    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getOriginalNotificationColor()I

    move-result v3

    invoke-direct {p0, v0, p2, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;->applyToChild(Landroid/view/View;ZI)V

    .line 61
    return-void
.end method

.class abstract Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IconComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;-><init>()V

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
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSameColor(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "parentData"    # Ljava/lang/Object;
    .param p2, "childData"    # Ljava/lang/Object;

    .prologue
    .line 351
    check-cast p1, Landroid/app/Notification;

    .end local p1    # "parentData":Ljava/lang/Object;
    iget v1, p1, Landroid/app/Notification;->color:I

    .line 352
    .local v1, "parentColor":I
    check-cast p2, Landroid/app/Notification;

    .end local p2    # "childData":Ljava/lang/Object;
    iget v0, p2, Landroid/app/Notification;->color:I

    .line 353
    .local v0, "childColor":I
    if-ne v1, v0, :cond_c

    const/4 v2, 0x1

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method protected hasSameIcon(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "parentData"    # Ljava/lang/Object;
    .param p2, "childData"    # Ljava/lang/Object;

    .prologue
    .line 342
    check-cast p1, Landroid/app/Notification;

    .end local p1    # "parentData":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 343
    .local v1, "parentIcon":Landroid/graphics/drawable/Icon;
    check-cast p2, Landroid/app/Notification;

    .end local p2    # "childData":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 344
    .local v0, "childIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    return v2
.end method

.method public isEmpty(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

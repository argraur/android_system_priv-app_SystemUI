.class final Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;
.super Landroid/util/FloatProperty;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;->get(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V
    .registers 3
    .param p1, "object"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "value"    # F

    .prologue
    .line 179
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTranslation(F)V

    .line 178
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .prologue
    .line 178
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;->setValue(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    return-void
.end method

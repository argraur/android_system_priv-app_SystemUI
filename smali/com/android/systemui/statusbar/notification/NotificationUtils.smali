.class public Lcom/android/systemui/statusbar/notification/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static final sLocationBase:[I

.field private static final sLocationOffset:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 31
    new-array v0, v1, [I

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    .line 32
    new-array v0, v1, [I

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F
    .registers 5
    .param p0, "offsetView"    # Landroid/view/View;
    .param p1, "baseView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 56
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    aget v0, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public static interpolate(FFF)F
    .registers 5
    .param p0, "start"    # F
    .param p1, "end"    # F
    .param p2, "amount"    # F

    .prologue
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public static interpolateColors(IIF)I
    .registers 8
    .param p0, "startColor"    # I
    .param p1, "endColor"    # I
    .param p2, "amount"    # F

    .prologue
    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 50
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 51
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 52
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v3

    float-to-int v3, v3

    .line 48
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z
    .registers 6
    .param p0, "v"    # Landroid/widget/ImageView;
    .param p1, "colorUtil"    # Lcom/android/internal/util/NotificationColorUtil;

    .prologue
    const v3, 0x7f12003b

    .line 34
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, "isGrayscale":Ljava/lang/Object;
    if-eqz v1, :cond_10

    .line 36
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 38
    :cond_10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 39
    .local v0, "grayscale":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 40
    return v0
.end method

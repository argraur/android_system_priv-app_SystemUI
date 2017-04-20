.class public Lcom/android/systemui/recents/misc/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/misc/Utilities$1;,
        Lcom/android/systemui/recents/misc/Utilities$2;
    }
.end annotation


# static fields
.field public static final DRAWABLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRAWABLE_RECT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final RECTF_EVALUATOR:Lcom/android/systemui/recents/misc/RectFEvaluator;

.field public static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lcom/android/systemui/recents/misc/Utilities$1;

    const-string/jumbo v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/Utilities$1;-><init>(Ljava/lang/String;)V

    .line 51
    sput-object v0, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 65
    new-instance v0, Lcom/android/systemui/recents/misc/Utilities$2;

    const-class v1, Landroid/graphics/Rect;

    const-string/jumbo v2, "drawableBounds"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/misc/Utilities$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    sput-object v0, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    .line 77
    new-instance v0, Lcom/android/systemui/recents/misc/RectFEvaluator;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/RectFEvaluator;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/Utilities;->RECTF_EVALUATOR:Lcom/android/systemui/recents/misc/RectFEvaluator;

    .line 78
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/systemui/recents/misc/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/Utilities;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayToSet([Ljava/lang/Object;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/util/ArraySet",
            "<TT;>;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "setOut":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 114
    if-eqz p0, :cond_8

    .line 115
    invoke-static {p1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 117
    :cond_8
    return-object p1
.end method

.method public static cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V
    .registers 2
    .param p0, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 211
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 212
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    .line 213
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 210
    :cond_e
    return-void
.end method

.method public static clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 124
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .registers 4
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 131
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static clamp01(F)F
    .registers 3
    .param p0, "value"    # F

    .prologue
    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static computeContrastBetweenColors(II)F
    .registers 14
    .param p0, "bg"    # I
    .param p1, "fg"    # I

    .prologue
    .line 176
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v3, v8, v9

    .line 177
    .local v3, "bgR":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v1, v8, v9

    .line 178
    .local v1, "bgG":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v0, v8, v9

    .line 179
    .local v0, "bgB":F
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v3, v8

    if-gez v8, :cond_a4

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v3, v8

    .line 180
    :goto_26
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_b9

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v1, v8

    .line 181
    :goto_31
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_ce

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v0, v8

    .line 182
    :goto_3c
    const v8, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v8, v3

    const v9, 0x3f371759    # 0.7152f

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    const v9, 0x3d93dd98    # 0.0722f

    mul-float/2addr v9, v0

    add-float v2, v8, v9

    .line 184
    .local v2, "bgL":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v7, v8, v9

    .line 185
    .local v7, "fgR":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v5, v8, v9

    .line 186
    .local v5, "fgG":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v4, v8, v9

    .line 187
    .local v4, "fgB":F
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_e3

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v7, v8

    .line 188
    :goto_71
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v5, v8

    if-gez v8, :cond_f8

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v5, v8

    .line 189
    :goto_7c
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v4, v8

    if-gez v8, :cond_10d

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v4, v8

    .line 190
    :goto_87
    const v8, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v8, v7

    const v9, 0x3f371759    # 0.7152f

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    const v9, 0x3d93dd98    # 0.0722f

    mul-float/2addr v9, v4

    add-float v6, v8, v9

    .line 192
    .local v6, "fgL":F
    const v8, 0x3d4ccccd    # 0.05f

    add-float/2addr v8, v6

    const v9, 0x3d4ccccd    # 0.05f

    add-float/2addr v9, v2

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    return v8

    .line 179
    .end local v2    # "bgL":F
    .end local v4    # "fgB":F
    .end local v5    # "fgG":F
    .end local v6    # "fgL":F
    .end local v7    # "fgR":F
    :cond_a4
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v3

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v3, v8

    goto/16 :goto_26

    .line 180
    :cond_b9
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v1

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v1, v8

    goto/16 :goto_31

    .line 181
    :cond_ce
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v0

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v0, v8

    goto/16 :goto_3c

    .line 187
    .restart local v2    # "bgL":F
    .restart local v4    # "fgB":F
    .restart local v5    # "fgG":F
    .restart local v7    # "fgR":F
    :cond_e3
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v7

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    goto/16 :goto_71

    .line 188
    :cond_f8
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v5

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v5, v8

    goto/16 :goto_7c

    .line 189
    :cond_10d
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v4

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v4, v8

    goto/16 :goto_87
.end method

.method public static dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 3
    .param p0, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 321
    if-nez p0, :cond_6

    .line 322
    const-string/jumbo v0, "N:0,0-0,0"

    return-object v0

    .line 324
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 89
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_5
    if-eqz v0, :cond_19

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 91
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    return-object v0

    .line 93
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_14
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_5

    .line 95
    :cond_19
    return-object v2
.end method

.method public static findViewStubById(Landroid/app/Activity;I)Landroid/view/ViewStub;
    .registers 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "stubId"    # I

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public static findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;
    .registers 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "stubId"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public static getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getColorWithOverlay(IIF)I
    .registers 8
    .param p0, "baseColor"    # I
    .param p1, "overlayColor"    # I
    .param p2, "overlayAlpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 198
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 199
    sub-float v1, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 198
    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 200
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    .line 201
    sub-float v2, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 200
    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 202
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    .line 203
    sub-float v3, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 202
    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 197
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static isDescendentAccessibilityFocused(Landroid/view/View;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 294
    return v4

    .line 297
    :cond_8
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_24

    move-object v2, p0

    .line 298
    check-cast v2, Landroid/view/ViewGroup;

    .line 299
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 300
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_24

    .line 301
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 302
    return v4

    .line 300
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 306
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_24
    const/4 v3, 0x0

    return v3
.end method

.method public static mapRange(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 148
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static matchTaskListSize(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    .local p1, "transforms":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 262
    .local v2, "taskTransformCount":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 263
    .local v1, "taskCount":I
    if-ge v2, v1, :cond_18

    .line 265
    move v0, v2

    .local v0, "i":I
    :goto_b
    if-ge v0, v1, :cond_21

    .line 266
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 268
    .end local v0    # "i":I
    :cond_18
    if-le v2, v1, :cond_21

    .line 270
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 259
    :cond_21
    return-void
.end method

.method public static removeAnimationListenersRecursive(Landroid/animation/Animator;)V
    .registers 4
    .param p0, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 221
    instance-of v2, p0, Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1f

    move-object v2, p0

    .line 222
    check-cast v2, Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_1f

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->removeAnimationListenersRecursive(Landroid/animation/Animator;)V

    .line 223
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 227
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_1f
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 220
    return-void
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/RectF;F)V
    .registers 6
    .param p0, "r"    # Landroid/graphics/RectF;
    .param p1, "scale"    # F

    .prologue
    .line 162
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_2a

    .line 163
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 164
    .local v0, "cx":F
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 165
    .local v1, "cy":F
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 166
    iget v2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 167
    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->top:F

    .line 168
    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 169
    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->bottom:F

    .line 170
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 161
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    :cond_2a
    return-void
.end method

.method public static setViewFrameFromTranslation(Landroid/view/View;)V
    .registers 7
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 234
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 235
    .local v0, "taskViewRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 236
    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 237
    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 238
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 239
    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    .line 238
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 233
    return-void
.end method

.class Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .registers 10
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 51
    and-int v3, p1, p2

    if-eqz v3, :cond_19

    const/4 v1, 0x1

    .line 52
    .local v1, "wantBasic":Z
    :goto_5
    or-int v0, p3, p4

    .line 53
    .local v0, "directional":I
    and-int v3, p1, v0

    if-eqz v3, :cond_1b

    const/4 v2, 0x1

    .line 55
    .local v2, "wantLeftOrRight":Z
    :goto_c
    if-eqz v1, :cond_20

    .line 56
    if-eqz v2, :cond_1d

    .line 57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "bad arguments"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    .end local v0    # "directional":I
    .end local v1    # "wantBasic":Z
    .end local v2    # "wantLeftOrRight":Z
    :cond_19
    const/4 v1, 0x0

    .restart local v1    # "wantBasic":Z
    goto :goto_5

    .line 53
    .restart local v0    # "directional":I
    :cond_1b
    const/4 v2, 0x0

    .restart local v2    # "wantLeftOrRight":Z
    goto :goto_c

    .line 59
    :cond_1d
    not-int v3, v0

    and-int/2addr v3, p0

    return v3

    .line 60
    :cond_20
    if-eqz v2, :cond_25

    .line 61
    not-int v3, p2

    and-int/2addr v3, p0

    return v3

    .line 63
    :cond_25
    return p0
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .registers 7
    .param p1, "metaState"    # I
    .param p2, "modifiers"    # I

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 p1, v1, 0xf7

    .line 82
    const/16 v1, 0x40

    const/16 v2, 0x80

    .line 81
    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    .line 84
    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x20

    .line 83
    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    .line 85
    if-ne p1, p2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public metaStateHasNoModifiers(I)Z
    .registers 4
    .param p1, "metaState"    # I

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf7

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public normalizeMetaState(I)I
    .registers 3
    .param p1, "metaState"    # I

    .prologue
    .line 69
    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_6

    .line 70
    or-int/lit8 p1, p1, 0x1

    .line 72
    :cond_6
    and-int/lit8 v0, p1, 0x30

    if-eqz v0, :cond_c

    .line 73
    or-int/lit8 p1, p1, 0x2

    .line 75
    :cond_c
    and-int/lit16 v0, p1, 0xf7

    return v0
.end method

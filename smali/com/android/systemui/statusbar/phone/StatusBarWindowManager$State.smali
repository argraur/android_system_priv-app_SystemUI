.class Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;
.super Ljava/lang/Object;
.source "StatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field backdropShowing:Z

.field bouncerShowing:Z

.field forceCollapsed:Z

.field forceDozeBrightness:Z

.field forceStatusBarVisible:Z

.field forceUserActivity:Z

.field headsUpShowing:Z

.field keyguardFadingAway:Z

.field keyguardNeedsInput:Z

.field keyguardOccluded:Z

.field keyguardShowing:Z

.field panelExpanded:Z

.field panelVisible:Z

.field qsExpanded:Z

.field remoteInputActive:Z

.field statusBarFocusable:Z

.field statusBarState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;-><init>()V

    return-void
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 393
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardShowing:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->keyguardOccluded:Z

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v4, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    .line 400
    .local v3, "newLine":Ljava/lang/String;
    const-string/jumbo v5, "Window State {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$State;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 406
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    array-length v6, v2

    :goto_1b
    if-ge v5, v6, :cond_3f

    aget-object v1, v2, v5

    .line 407
    .local v1, "field":Ljava/lang/reflect/Field;
    const-string/jumbo v7, "  "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string/jumbo v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_39} :catch_4a

    .line 415
    :goto_39
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 417
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_3f
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 413
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_4a
    move-exception v0

    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_39
.end method

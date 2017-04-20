.class Lcom/android/systemui/recents/views/DockRegion;
.super Ljava/lang/Object;
.source "RecentsViewTouchHandler.java"


# static fields
.field public static PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

.field public static TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 50
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 52
    new-array v0, v3, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 54
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 52
    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 57
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v2

    .line 58
    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$DockState;->RIGHT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    aput-object v1, v0, v3

    .line 56
    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->TABLET_LANDSCAPE:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 60
    sget-object v0, Lcom/android/systemui/recents/views/DockRegion;->PHONE_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    sput-object v0, Lcom/android/systemui/recents/views/DockRegion;->TABLET_PORTRAIT:[Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 47
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 22
    new-array v0, v8, [[I

    .line 23
    const v1, 0x7f020314

    .line 24
    const v2, 0x7f020316

    .line 25
    const v3, 0x7f020318

    .line 26
    const v4, 0x7f02031a

    .line 27
    const v5, 0x7f02031c

    .line 23
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    .line 28
    const v1, 0x7f020315

    .line 29
    const v2, 0x7f020317

    .line 30
    const v3, 0x7f020319

    .line 31
    const v4, 0x7f02031b

    .line 32
    const v5, 0x7f02031d

    .line 28
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 22
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    new-array v0, v8, [[I

    .line 36
    const v1, 0x7f020102

    .line 37
    const v2, 0x7f020103

    .line 38
    const v3, 0x7f020104

    .line 39
    const v4, 0x7f020105

    .line 40
    const v5, 0x7f020106

    .line 36
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    .line 41
    const v1, 0x7f02010a

    .line 42
    const v2, 0x7f02010b

    .line 43
    const v3, 0x7f02010c

    .line 44
    const v4, 0x7f02010d

    .line 45
    const v5, 0x7f02010e

    .line 41
    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    .line 35
    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v6

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

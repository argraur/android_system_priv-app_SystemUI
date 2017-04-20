.class public Lcom/android/settingslib/net/DataUsageController;
.super Ljava/lang/Object;
.source "DataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/DataUsageController$Callback;,
        Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;,
        Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field private mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    const-string/jumbo v0, "DataUsageController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 54
    new-instance v0, Ljava/util/Formatter;

    .line 55
    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 54
    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 70
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 72
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 67
    return-void
.end method

.method private static addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .registers 6
    .param p0, "t"    # Landroid/text/format/Time;
    .param p1, "months"    # I

    .prologue
    .line 111
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 112
    .local v0, "rt":Landroid/text/format/Time;
    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 114
    return-object v0
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v5, 0x0

    .line 194
    iget-object v4, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v4, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-object v5

    .line 195
    :cond_8
    iget-object v4, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 196
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    if-nez v2, :cond_11

    return-object v5

    .line 197
    :cond_11
    array-length v0, v2

    .line 198
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_25

    .line 199
    aget-object v3, v2, v1

    .line 200
    .local v3, "policy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_22

    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 201
    return-object v3

    .line 198
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 204
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_25
    return-object v5
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .registers 16
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 246
    const v8, 0x10010

    .line 247
    .local v8, "flags":I
    sget-object v9, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 248
    :try_start_6
    sget-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_20

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 247
    :catchall_20
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 241
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 240
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "actualSubscriberId":Ljava/lang/String;
    return-object v0
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .registers 5

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v2, :cond_c

    .line 91
    :try_start_4
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_c} :catch_f

    .line 98
    :cond_c
    :goto_c
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    return-object v2

    .line 94
    :catch_f
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "DataUsageController"

    const-string/jumbo v3, "Failed to open stats session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 92
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1a
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DataUsageController"

    const-string/jumbo v3, "Failed to open stats session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private static historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;
    .registers 5
    .param p0, "entry"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    const/4 v0, 0x0

    .line 208
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v1, "bucketDuration="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string/jumbo v1, ",bucketStart="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string/jumbo v1, ",activeTime="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string/jumbo v1, ",rxBytes="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string/jumbo v1, ",rxPackets="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, ",txBytes="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    const-string/jumbo v1, ",txPackets="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    const-string/jumbo v1, ",operations="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    const/16 v1, 0x5d

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string/jumbo v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get data usage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .registers 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/net/DataUsageController;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "subscriberId":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 120
    const-string/jumbo v2, "no subscriber id"

    invoke-direct {p0, v2}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    return-object v2

    .line 122
    :cond_10
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 123
    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    return-object v2
.end method

.method public getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .registers 32
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v21

    .line 135
    .local v21, "session":Landroid/net/INetworkStatsSession;
    if-nez v21, :cond_10

    .line 136
    const-string/jumbo v12, "no stats session"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v12

    return-object v12

    .line 138
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/android/settingslib/net/DataUsageController;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v19

    .line 140
    .local v19, "policy":Landroid/net/NetworkPolicy;
    const/16 v12, 0xa

    :try_start_16
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v12}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 141
    .local v5, "history":Landroid/net/NetworkStatsHistory;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 143
    .local v10, "now":J
    if-eqz v19, :cond_135

    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    if-lez v12, :cond_135

    .line 145
    sget-boolean v12, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    if-eqz v12, :cond_61

    const-string/jumbo v12, "DataUsageController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cycle day="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " tz="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 146
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 145
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_61
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, v19

    iget-object v12, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 148
    .local v18, "nowTime":Landroid/text/format/Time;
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->setToNow()V

    .line 149
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 150
    .local v20, "policyTime":Landroid/text/format/Time;
    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v25, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v12, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 151
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 152
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_11e

    .line 153
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 154
    .local v6, "start":J
    const/4 v12, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 164
    .end local v18    # "nowTime":Landroid/text/format/Time;
    .end local v20    # "policyTime":Landroid/text/format/Time;
    .local v8, "end":J
    :goto_b7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 165
    .local v16, "callStart":J
    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 166
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 167
    .local v14, "callEnd":J
    sget-boolean v12, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    if-eqz v12, :cond_112

    const-string/jumbo v12, "DataUsageController"

    const-string/jumbo v25, "history call from %s to %s now=%s took %sms: %s"

    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    .line 168
    new-instance v27, Ljava/util/Date;

    move-object/from16 v0, v27

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    const/16 v28, 0x0

    aput-object v27, v26, v28

    new-instance v27, Ljava/util/Date;

    move-object/from16 v0, v27

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    const/16 v28, 0x1

    aput-object v27, v26, v28

    new-instance v27, Ljava/util/Date;

    move-object/from16 v0, v27

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    const/16 v28, 0x2

    aput-object v27, v26, v28

    sub-long v28, v14, v16

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    const/16 v28, 0x3

    aput-object v27, v26, v28

    .line 169
    invoke-static {v13}, Lcom/android/settingslib/net/DataUsageController;->historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    aput-object v27, v26, v28

    .line 167
    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_112
    if-nez v13, :cond_13f

    .line 171
    const-string/jumbo v12, "no entry data"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v12

    return-object v12

    .line 156
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .restart local v18    # "nowTime":Landroid/text/format/Time;
    .restart local v20    # "policyTime":Landroid/text/format/Time;
    :cond_11e
    const/4 v12, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 157
    .restart local v6    # "start":J
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .restart local v8    # "end":J
    goto :goto_b7

    .line 161
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v18    # "nowTime":Landroid/text/format/Time;
    .end local v20    # "policyTime":Landroid/text/format/Time;
    :cond_135
    move-wide v8, v10

    .line 162
    .restart local v8    # "end":J
    const-wide v26, 0x90321000L

    sub-long v6, v10, v26

    .restart local v6    # "start":J
    goto/16 :goto_b7

    .line 173
    .restart local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v14    # "callEnd":J
    .restart local v16    # "callStart":J
    :cond_13f
    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v26, v0

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    add-long v22, v26, v28

    .line 174
    .local v22, "totalBytes":J
    new-instance v24, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-direct/range {v24 .. v24}, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;-><init>()V

    .line 175
    .local v24, "usage":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    move-object/from16 v0, v24

    iput-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->startDate:J

    .line 176
    move-wide/from16 v0, v22

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 177
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/settingslib/net/DataUsageController;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    .line 178
    if-eqz v19, :cond_1af

    .line 179
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v12, v26, v28

    if-lez v12, :cond_1a9

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v26, v0

    :goto_176
    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 180
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v12, v26, v28

    if-lez v12, :cond_1ac

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v26, v0

    :goto_18e
    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 184
    :goto_194
    if-eqz v24, :cond_1a8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    if-eqz v12, :cond_1a8

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    invoke-interface {v12}, Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    .line 187
    :cond_1a8
    return-object v24

    .line 179
    :cond_1a9
    const-wide/16 v26, 0x0

    goto :goto_176

    .line 180
    :cond_1ac
    const-wide/16 v26, 0x0

    goto :goto_18e

    .line 182
    :cond_1af
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J
    :try_end_1b9
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b9} :catch_1ba

    goto :goto_194

    .line 188
    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "now":J
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .end local v22    # "totalBytes":J
    .end local v24    # "usage":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    :catch_1ba
    move-exception v4

    .line 189
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v12, "remote call failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v12

    return-object v12
.end method

.method public getDefaultWarningLevel()J
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$integer;->default_data_warning_level_mb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 84
    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public isMobileDataEnabled()Z
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataSupported()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 231
    iget-object v1, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    .line 230
    :cond_13
    return v0
.end method

.method public setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/settingslib/net/DataUsageController$Callback;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    .line 101
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 221
    const-string/jumbo v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileDataEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    if-eqz v0, :cond_28

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    invoke-interface {v0, p1}, Lcom/android/settingslib/net/DataUsageController$Callback;->onMobileDataEnabled(Z)V

    .line 220
    :cond_28
    return-void
.end method

.method public setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V
    .registers 2
    .param p1, "networkController"    # Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    .line 76
    return-void
.end method

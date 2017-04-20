.class Landroid/support/v7/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

.field mCanReadHistoricalData:Z

.field final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    const-class v0, Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    .line 91
    return-void
.end method

.method private addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
    .registers 4
    .param p1, "historicalRecord"    # Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .prologue
    .line 728
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 729
    .local v0, "added":Z
    if-eqz v0, :cond_17

    .line 730
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 731
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 732
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 733
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 734
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 736
    :cond_17
    return v0
.end method

.method private ensureConsistentState()V
    .registers 3

    .prologue
    .line 655
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v0

    .line 656
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 657
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 658
    if-eqz v0, :cond_14

    .line 659
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 660
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 654
    :cond_14
    return-void
.end method

.method private loadActivitiesIfNeeded()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 688
    iget-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    if-eqz v4, :cond_38

    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_38

    .line 689
    iput-boolean v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 690
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 691
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 692
    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 691
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 693
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 694
    .local v2, "resolveInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v2, :cond_36

    .line 695
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 696
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v5, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v5, p0, v1}, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 698
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_36
    const/4 v4, 0x1

    return v4

    .line 700
    .end local v0    # "i":I
    .end local v2    # "resolveInfoCount":I
    .end local v3    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_38
    return v6
.end method

.method private persistHistoricalDataIfNeeded()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 567
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_e

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_13

    .line 571
    return-void

    .line 573
    :cond_13
    iput-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 575
    new-instance v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 576
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 575
    invoke-static {v0, v1}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 566
    :cond_36
    return-void
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 743
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int v1, v3, v4

    .line 744
    .local v1, "pruneCount":I
    if-gtz v1, :cond_e

    .line 745
    return-void

    .line 747
    :cond_e
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_1f

    .line 749
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 748
    .local v2, "prunedRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 742
    .end local v2    # "prunedRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    :cond_1f
    return-void
.end method

.method private readHistoricalDataIfNeeded()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 711
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v0, :cond_12

    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 718
    :cond_12
    return v1

    .line 713
    :cond_13
    iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 714
    iput-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 715
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    .line 716
    return v2
.end method

.method private readHistoricalDataImpl()V
    .registers 19

    .prologue
    .line 963
    const/4 v3, 0x0

    .line 965
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_25

    move-result-object v3

    .line 973
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 974
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v15, "UTF-8"

    invoke-interface {v8, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 976
    const/4 v12, 0x0

    .line 977
    .local v12, "type":I
    :goto_1a
    const/4 v15, 0x1

    if-eq v12, v15, :cond_27

    const/4 v15, 0x2

    if-eq v12, v15, :cond_27

    .line 978
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_1a

    .line 966
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    .local v3, "fis":Ljava/io/FileInputStream;
    :catch_25
    move-exception v4

    .line 970
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    return-void

    .line 981
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    .local v3, "fis":Ljava/io/FileInputStream;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_27
    const-string/jumbo v15, "historical-records"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_65

    .line 982
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v16, "Share records file does not start with historical-records tag."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_3d} :catch_3d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3d} :catch_97
    .catchall {:try_start_f .. :try_end_3d} :catchall_f4

    .line 1018
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_3d
    move-exception v14

    .line 1019
    .local v14, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3e
    sget-object v15, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_f4

    .line 1023
    if-eqz v3, :cond_64

    .line 1025
    :try_start_61
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_fb

    .line 962
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_64
    :goto_64
    return-void

    .line 986
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_65
    :try_start_65
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 987
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 990
    :cond_6c
    :goto_6c
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_6f} :catch_3d
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6f} :catch_97
    .catchall {:try_start_65 .. :try_end_6f} :catchall_f4

    move-result v12

    .line 991
    const/4 v15, 0x1

    if-ne v12, v15, :cond_7b

    .line 1023
    if-eqz v3, :cond_64

    .line 1025
    :try_start_75
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_64

    .line 1026
    :catch_79
    move-exception v6

    .local v6, "ioe":Ljava/io/IOException;
    goto :goto_64

    .line 994
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_7b
    const/4 v15, 0x3

    if-eq v12, v15, :cond_6c

    const/4 v15, 0x4

    if-eq v12, v15, :cond_6c

    .line 997
    :try_start_81
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 998
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "historical-record"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c1

    .line 999
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v16, "Share records file not well-formed."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_97
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_97} :catch_3d
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_97} :catch_97
    .catchall {:try_start_81 .. :try_end_97} :catchall_f4

    .line 1020
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_97
    move-exception v6

    .line 1021
    .restart local v6    # "ioe":Ljava/io/IOException;
    :try_start_98
    sget-object v15, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9
    .catchall {:try_start_98 .. :try_end_b9} :catchall_f4

    .line 1023
    if-eqz v3, :cond_64

    .line 1025
    :try_start_bb
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_64

    .line 1026
    :catch_bf
    move-exception v6

    goto :goto_64

    .line 1002
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_c1
    :try_start_c1
    const-string/jumbo v15, "activity"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, "activity":Ljava/lang/String;
    const-string/jumbo v15, "time"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1006
    .local v10, "time":J
    const-string/jumbo v15, "weight"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 1007
    .local v13, "weight":F
    new-instance v9, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v9, v2, v10, v11, v13}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1008
    .local v9, "readRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c1 .. :try_end_f2} :catch_3d
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_f2} :catch_97
    .catchall {:try_start_c1 .. :try_end_f2} :catchall_f4

    goto/16 :goto_6c

    .line 1022
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "readRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    .end local v10    # "time":J
    .end local v12    # "type":I
    .end local v13    # "weight":F
    :catchall_f4
    move-exception v15

    .line 1023
    if-eqz v3, :cond_fa

    .line 1025
    :try_start_f7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fe

    .line 1022
    :cond_fa
    :goto_fa
    throw v15

    .line 1026
    .restart local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_fb
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    goto/16 :goto_64

    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_fe
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_fa
.end method

.method private sortActivitiesIfNeeded()Z
    .registers 5

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_10

    .line 673
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 678
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 673
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 675
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 674
    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 676
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .registers 12
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    .line 458
    iget-object v7, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 459
    :try_start_4
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_53

    if-nez v6, :cond_a

    monitor-exit v7

    .line 460
    return-object v9

    .line 463
    :cond_a
    :try_start_a
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 465
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 467
    .local v2, "chosenActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    .line 468
    iget-object v6, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 469
    iget-object v8, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 467
    invoke-direct {v3, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 472
    .local v0, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 474
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v6, :cond_43

    .line 476
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 477
    .local v1, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v6, p0, v1}, Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_53

    move-result v4

    .line 479
    .local v4, "handled":Z
    if-eqz v4, :cond_43

    monitor-exit v7

    .line 480
    return-object v9

    .line 484
    .end local v1    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v4    # "handled":Z
    :cond_43
    :try_start_43
    new-instance v5, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v6, 0x3f800000    # 1.0f

    .line 484
    invoke-direct {v5, v3, v8, v9, v6}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 486
    .local v5, "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/support/v7/widget/ActivityChooserModel;->addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_53

    monitor-exit v7

    .line 488
    return-object v0

    .line 458
    .end local v0    # "choiceIntent":Landroid/content/Intent;
    .end local v2    # "chosenActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    :catchall_53
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 411
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 413
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 411
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getActivityCount()I
    .registers 3

    .prologue
    .line 396
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit v1

    return v0

    .line 396
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .registers 8
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 425
    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 426
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 428
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 429
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_1e

    .line 430
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 431
    .local v2, "currentActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_21

    if-ne v4, p1, :cond_1b

    monitor-exit v5

    .line 432
    return v3

    .line 429
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 435
    .end local v2    # "currentActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1e
    const/4 v4, -0x1

    monitor-exit v5

    return v4

    .line 425
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v3    # "i":I
    :catchall_21
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 513
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 515
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 516
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    monitor-exit v1

    return-object v0

    :cond_1b
    monitor-exit v1

    .line 519
    const/4 v0, 0x0

    return-object v0

    .line 513
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getHistorySize()I
    .registers 3

    .prologue
    .line 642
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit v1

    return v0

    .line 642
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDefaultActivity(I)V
    .registers 12
    .param p1, "index"    # I

    .prologue
    .line 533
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 534
    :try_start_3
    invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 536
    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 537
    .local v2, "newDefaultActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 540
    .local v3, "oldDefaultActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_41

    .line 542
    iget v5, v3, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v7, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v7

    .line 543
    const/high16 v7, 0x40a00000    # 5.0f

    .line 542
    add-float v4, v5, v7

    .line 548
    .local v4, "weight":F
    :goto_22
    new-instance v0, Landroid/content/ComponentName;

    .line 549
    iget-object v5, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 550
    iget-object v7, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 548
    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .local v0, "defaultName":Landroid/content/ComponentName;
    new-instance v1, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 551
    invoke-direct {v1, v0, v8, v9, v4}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 553
    .local v1, "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_44

    monitor-exit v6

    .line 532
    return-void

    .line 545
    .end local v0    # "defaultName":Landroid/content/ComponentName;
    .end local v1    # "historicalRecord":Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
    .end local v4    # "weight":F
    :cond_41
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "weight":F
    goto :goto_22

    .line 533
    .end local v2    # "newDefaultActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "oldDefaultActivity":Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "weight":F
    :catchall_44
    move-exception v5

    monitor-exit v6

    throw v5
.end method

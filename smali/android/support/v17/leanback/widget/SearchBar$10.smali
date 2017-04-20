.class Landroid/support/v17/leanback/widget/SearchBar$10;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;

    .prologue
    .line 624
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 1

    .prologue
    .line 633
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 645
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 1

    .prologue
    .line 650
    return-void
.end method

.method public onError(I)V
    .registers 4
    .param p1, "error"    # I

    .prologue
    .line 657
    packed-switch p1, :pswitch_data_68

    .line 686
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer other error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_b
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 691
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchFailure()V

    .line 655
    return-void

    .line 659
    :pswitch_16
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer network timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 662
    :pswitch_1f
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer network error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 665
    :pswitch_28
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer audio error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 668
    :pswitch_31
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer server error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 671
    :pswitch_3a
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer client error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 674
    :pswitch_43
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer speech timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 677
    :pswitch_4c
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer no match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 680
    :pswitch_55
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer busy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 683
    :pswitch_5e
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer insufficient permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 657
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1f
        :pswitch_28
        :pswitch_31
        :pswitch_3a
        :pswitch_43
        :pswitch_4c
        :pswitch_55
        :pswitch_5e
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 735
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 714
    const-string/jumbo v3, "results_recognition"

    .line 713
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 717
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 718
    :cond_11
    return-void

    .line 723
    :cond_12
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 728
    .local v2, "stableText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_2c

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 731
    :goto_24
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v3, v2, v0}, Landroid/support/v17/leanback/widget/SearchEditText;->updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-void

    .line 728
    :cond_2c
    const/4 v0, 0x0

    .local v0, "pendingText":Ljava/lang/String;
    goto :goto_24
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 628
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showListening()V

    .line 629
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchOpen()V

    .line 626
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 698
    const-string/jumbo v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 699
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_24

    .line 702
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 703
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->submitQuery()V

    .line 707
    :cond_24
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 708
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchSuccess()V

    .line 695
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 4
    .param p1, "rmsdB"    # F

    .prologue
    .line 640
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_e

    const/4 v0, 0x0

    .line 641
    .local v0, "level":I
    :goto_6
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setSoundLevel(I)V

    .line 638
    return-void

    .line 640
    .end local v0    # "level":I
    :cond_e
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .restart local v0    # "level":I
    goto :goto_6
.end method

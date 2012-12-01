.class public Lcom/Clocker/World/gui/TimeZonePicker;
.super Landroid/app/Activity;
.source "TimeZonePicker.java"


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field alltzLV:Landroid/widget/ListView;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field tzFilter:Landroid/widget/EditText;

.field tzIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Lcom/Clocker/World/gui/TimeZonePicker$1;

    invoke-direct {v0, p0}, Lcom/Clocker/World/gui/TimeZonePicker$1;-><init>(Lcom/Clocker/World/gui/TimeZonePicker;)V

    iput-object v0, p0, Lcom/Clocker/World/gui/TimeZonePicker;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 21
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/Clocker/World/gui/TimeZonePicker;->setContentView(I)V

    .line 33
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/Clocker/World/gui/TimeZonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker;->tzFilter:Landroid/widget/EditText;

    .line 34
    const v2, 0x7f060010

    invoke-virtual {p0, v2}, Lcom/Clocker/World/gui/TimeZonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker;->alltzLV:Landroid/widget/ListView;

    .line 36
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker;->tzIds:[Ljava/lang/String;

    .line 37
    iget-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker;->tzIds:[Ljava/lang/String;

    array-length v0, v2

    .line 40
    .local v0, dim:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 43
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/Clocker/World/gui/TimeZonePicker;->tzIds:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker;->adapter:Landroid/widget/ArrayAdapter;

    .line 46
    iget-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker;->alltzLV:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/Clocker/World/gui/TimeZonePicker;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker;->alltzLV:Landroid/widget/ListView;

    new-instance v3, Lcom/Clocker/World/gui/TimeZonePicker$2;

    invoke-direct {v3, p0}, Lcom/Clocker/World/gui/TimeZonePicker$2;-><init>(Lcom/Clocker/World/gui/TimeZonePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker;->tzFilter:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/Clocker/World/gui/TimeZonePicker;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    return-void

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker;->tzIds:[Ljava/lang/String;

    iget-object v3, p0, Lcom/Clocker/World/gui/TimeZonePicker;->tzIds:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "/"

    const-string v5, " > "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5f

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/Clocker/World/gui/TimeZonePicker;->tzFilter:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/Clocker/World/gui/TimeZonePicker;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    return-void
.end method

.method saveTimeZone(Ljava/lang/String;)V
    .locals 2
    .parameter "timezone"

    .prologue
    .line 81
    new-instance v0, Lcom/Clocker/World/data/ClocksDatabase;

    invoke-virtual {p0}, Lcom/Clocker/World/gui/TimeZonePicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/Clocker/World/data/ClocksDatabase;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, db:Lcom/Clocker/World/data/ClocksDatabase;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/Clocker/World/data/ClocksDatabase;->open(I)V

    .line 83
    invoke-virtual {v0, p1}, Lcom/Clocker/World/data/ClocksDatabase;->insertClock(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcom/Clocker/World/data/ClocksDatabase;->close()V

    .line 85
    return-void
.end method

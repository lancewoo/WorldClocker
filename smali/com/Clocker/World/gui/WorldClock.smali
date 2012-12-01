.class public Lcom/Clocker/World/gui/WorldClock;
.super Landroid/app/Activity;
.source "WorldClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field cities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field clocksList:Landroid/widget/ListView;

.field db:Lcom/Clocker/World/data/ClocksDatabase;

.field dbIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private mTask:Ljava/lang/Runnable;

.field rawTimezonesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/Clocker/World/gui/WorldClock;->dbIds:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/Clocker/World/gui/WorldClock;->cities:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/Clocker/World/gui/WorldClock;->rawTimezonesList:Ljava/util/List;

    .line 273
    new-instance v0, Lcom/Clocker/World/gui/WorldClock$1;

    invoke-direct {v0, p0}, Lcom/Clocker/World/gui/WorldClock$1;-><init>(Lcom/Clocker/World/gui/WorldClock;)V

    iput-object v0, p0, Lcom/Clocker/World/gui/WorldClock;->handler:Landroid/os/Handler;

    .line 279
    new-instance v0, Lcom/Clocker/World/gui/WorldClock$2;

    invoke-direct {v0, p0}, Lcom/Clocker/World/gui/WorldClock$2;-><init>(Lcom/Clocker/World/gui/WorldClock;)V

    iput-object v0, p0, Lcom/Clocker/World/gui/WorldClock;->mTask:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/Clocker/World/gui/WorldClock;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/Clocker/World/gui/WorldClock;->updateList()V

    return-void
.end method

.method static synthetic access$1(Lcom/Clocker/World/gui/WorldClock;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/Clocker/World/gui/WorldClock;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private switchClocks(II)V
    .locals 7
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    const/4 v4, 0x1

    const-string v5, "timezone"

    .line 245
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    invoke-virtual {v3, v4}, Lcom/Clocker/World/data/ClocksDatabase;->open(I)V

    .line 246
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    invoke-virtual {v3}, Lcom/Clocker/World/data/ClocksDatabase;->fetchClocks()Landroid/database/Cursor;

    move-result-object v0

    .line 247
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/Clocker/World/gui/WorldClock;->startManagingCursor(Landroid/database/Cursor;)V

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-le p2, v3, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 255
    const-string v3, "timezone"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, timezone1:Ljava/lang/String;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 257
    const-string v3, "timezone"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, timezone2:Ljava/lang/String;
    iget-object v4, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->dbIds:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v2}, Lcom/Clocker/World/data/ClocksDatabase;->updateClock(JLjava/lang/String;)I

    .line 259
    iget-object v4, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->dbIds:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v1}, Lcom/Clocker/World/data/ClocksDatabase;->updateClock(JLjava/lang/String;)I

    .line 260
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    invoke-virtual {v3}, Lcom/Clocker/World/data/ClocksDatabase;->close()V

    .line 261
    invoke-direct {p0}, Lcom/Clocker/World/gui/WorldClock;->updateList()V

    goto :goto_0
.end method

.method private updateList()V
    .locals 21

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/Clocker/World/data/ClocksDatabase;->open(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/Clocker/World/data/ClocksDatabase;->fetchClocks()Landroid/database/Cursor;

    move-result-object v9

    .line 109
    .local v9, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/WorldClock;->startManagingCursor(Landroid/database/Cursor;)V

    .line 112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v5, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const v6, 0x7f050033

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/WorldClock;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 114
    .local v11, h12time:Z
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 117
    .local v18, rows:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 119
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move v0, v12

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 144
    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "city"

    aput-object v6, v7, v4

    const/4 v4, 0x1

    const-string v6, "state"

    aput-object v6, v7, v4

    const/4 v4, 0x2

    const-string v6, "display"

    aput-object v6, v7, v4

    const/4 v4, 0x3

    const-string v6, "distance"

    aput-object v6, v7, v4

    .line 145
    .local v7, from:[Ljava/lang/String;
    const/4 v4, 0x4

    new-array v8, v4, [I

    fill-array-data v8, :array_0

    .line 147
    .local v8, to:[I
    new-instance v3, Landroid/widget/SimpleAdapter;

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/Clocker/World/gui/WorldClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 150
    const/high16 v6, 0x7f03

    .line 147
    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 153
    .local v3, adapter:Landroid/widget/SimpleAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/Clocker/World/data/ClocksDatabase;->close()V

    .line 155
    new-instance v4, Lcom/Clocker/World/gui/WorldClock$3;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/Clocker/World/gui/WorldClock$3;-><init>(Lcom/Clocker/World/gui/WorldClock;)V

    invoke-virtual {v3, v4}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Clocker/World/gui/WorldClock;->clocksList:Landroid/widget/ListView;

    move-object v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Clocker/World/gui/WorldClock;->clocksList:Landroid/widget/ListView;

    move-object v4, v0

    new-instance v5, Lcom/Clocker/World/gui/WorldClock$4;

    .end local v5           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/Clocker/World/gui/WorldClock$4;-><init>(Lcom/Clocker/World/gui/WorldClock;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    return-void

    .line 120
    .end local v3           #adapter:Landroid/widget/SimpleAdapter;
    .end local v7           #from:[Ljava/lang/String;
    .end local v8           #to:[I
    .restart local v5       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    invoke-interface {v9, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 121
    const-string v4, "timezone"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 122
    .local v15, index:I
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 123
    .local v17, rawTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Clocker/World/gui/WorldClock;->rawTimezonesList:Ljava/util/List;

    move-object v4, v0

    move-object v0, v4

    move v1, v12

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    const-string v4, "_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 125
    .local v13, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Clocker/World/gui/WorldClock;->dbIds:Ljava/util/List;

    move-object v4, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v12, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    invoke-static/range {v17 .. v17}, Lcom/Clocker/World/misc/TimezoneUtils;->parseCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, city:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/Clocker/World/misc/TimezoneUtils;->getContinent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 128
    .local v19, state:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/Clocker/World/misc/TimezoneUtils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 130
    .local v20, time:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 131
    invoke-static/range {v20 .. v20}, Lcom/Clocker/World/misc/TimezoneUtils;->convertTo12h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 133
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Clocker/World/gui/WorldClock;->cities:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v12, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 135
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v16, matchMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "city"

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v4, "state"

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v4, "display"

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v4, "distance"

    invoke-static/range {v17 .. v17}, Lcom/Clocker/World/misc/TimezoneUtils;->getDistance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 145
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x6t 0x7ft
        0x1t 0x0t 0x6t 0x7ft
        0x2t 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
    .end array-data
.end method


# virtual methods
.method public firstLaunch()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "launch"

    .line 86
    const-string v2, "firstlaunch"

    invoke-virtual {p0, v2, v4}, Lcom/Clocker/World/gui/WorldClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v2, "launch"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    .local v0, isFirstLaunch:Z
    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "launch"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    iget-object v2, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    invoke-virtual {v2, v5}, Lcom/Clocker/World/data/ClocksDatabase;->open(I)V

    .line 95
    iget-object v2, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    const-string v3, "Asia/Shanghai"

    invoke-virtual {v2, v3}, Lcom/Clocker/World/data/ClocksDatabase;->insertClock(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    const-string v3, "Asia/Hong_Kong"

    invoke-virtual {v2, v3}, Lcom/Clocker/World/data/ClocksDatabase;->insertClock(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    const-string v3, "America/New_York"

    invoke-virtual {v2, v3}, Lcom/Clocker/World/data/ClocksDatabase;->insertClock(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    const-string v3, "Europe/Rome"

    invoke-virtual {v2, v3}, Lcom/Clocker/World/data/ClocksDatabase;->insertClock(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    invoke-virtual {v2}, Lcom/Clocker/World/data/ClocksDatabase;->close()V

    .line 101
    invoke-direct {p0}, Lcom/Clocker/World/gui/WorldClock;->updateList()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 327
    :goto_0
    :sswitch_0
    return-void

    .line 319
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/Clocker/World/gui/TimeZonePicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, z:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/Clocker/World/gui/WorldClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060003 -> :sswitch_0
        0x7f06000e -> :sswitch_1
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 221
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 241
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    .line 223
    :pswitch_0
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sub-int/2addr v4, v7

    invoke-direct {p0, v3, v4}, Lcom/Clocker/World/gui/WorldClock;->switchClocks(II)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/Clocker/World/gui/WorldClock;->switchClocks(II)V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    invoke-virtual {v3, v7}, Lcom/Clocker/World/data/ClocksDatabase;->open(I)V

    .line 230
    iget-object v4, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->dbIds:Ljava/util/List;

    iget v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/Clocker/World/data/ClocksDatabase;->delete(J)V

    .line 231
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    invoke-virtual {v3}, Lcom/Clocker/World/data/ClocksDatabase;->close()V

    .line 232
    invoke-direct {p0}, Lcom/Clocker/World/gui/WorldClock;->updateList()V

    move v3, v7

    .line 233
    goto :goto_1

    .line 235
    :pswitch_3
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->cities:Ljava/util/List;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, city:Ljava/lang/String;
    const/16 v3, 0x20

    const/16 v4, 0x2b

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "geo:0,0?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 238
    .local v2, map:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/Clocker/World/gui/WorldClock;->startActivity(Landroid/content/Intent;)V

    move v3, v7

    .line 239
    goto :goto_1

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/Clocker/World/gui/WorldClock;->setContentView(I)V

    .line 56
    const v3, 0x7f06000e

    invoke-virtual {p0, v3}, Lcom/Clocker/World/gui/WorldClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    .local v0, add:Landroid/widget/Button;
    const v3, 0x7f06000c

    invoke-virtual {p0, v3}, Lcom/Clocker/World/gui/WorldClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->clocksList:Landroid/widget/ListView;

    .line 62
    new-instance v3, Lcom/Clocker/World/data/ClocksDatabase;

    invoke-virtual {p0}, Lcom/Clocker/World/gui/WorldClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/Clocker/World/data/ClocksDatabase;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->db:Lcom/Clocker/World/data/ClocksDatabase;

    .line 65
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock;->clocksList:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/Clocker/World/gui/WorldClock;->registerForContextMenu(Landroid/view/View;)V

    .line 68
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/Clocker/World/gui/WorldClock;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.commabit.wockd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/Clocker/World/gui/WorldClock;->firstLaunch()V

    .line 83
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 211
    const v0, 0x7f050032

    invoke-virtual {p0, v0}, Lcom/Clocker/World/gui/WorldClock;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 212
    const/4 v0, 0x1

    const v1, 0x7f050024

    invoke-virtual {p0, v1}, Lcom/Clocker/World/gui/WorldClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 213
    const/4 v0, 0x2

    const v1, 0x7f050023

    invoke-virtual {p0, v1}, Lcom/Clocker/World/gui/WorldClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 214
    const/4 v0, 0x3

    const v1, 0x7f050026

    invoke-virtual {p0, v1}, Lcom/Clocker/World/gui/WorldClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 215
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 296
    const/4 v0, 0x1

    const v1, 0x7f05002c

    invoke-virtual {p0, v1}, Lcom/Clocker/World/gui/WorldClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 304
    :pswitch_0
    const-string v1, "Android Tools"

    const-string v2, "market://search?q=pname:com.Clocker.World"

    const-string v3, "androidgame4u@gmail.com"

    const/4 v5, 0x1

    const-string v6, "CommaBit"

    move-object v0, p0

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/Clocker/World/misc/AboutActivity;->getAboutActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 305
    .local v8, about:Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/Clocker/World/gui/WorldClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 308
    .end local v8           #about:Landroid/content/Intent;
    :pswitch_1
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/Clocker/World/gui/Settings;

    invoke-direct {v9, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v9, i:Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/Clocker/World/gui/WorldClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 268
    invoke-direct {p0}, Lcom/Clocker/World/gui/WorldClock;->updateList()V

    .line 269
    return-void
.end method

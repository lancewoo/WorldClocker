.class public Lcom/Clocker/World/gui/Details;
.super Landroid/app/Activity;
.source "Details.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v16, 0x7f030001

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/Details;->setContentView(I)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/Clocker/World/gui/Details;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 25
    .local v11, pkg:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/Clocker/World/gui/Details;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 26
    .local v9, intent:Landroid/content/Intent;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".myString"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 28
    .local v15, timezone:Ljava/lang/String;
    const v16, 0x7f060006

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/Details;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 29
    .local v4, detailsCityName:Landroid/widget/TextView;
    const v16, 0x7f060007

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/Details;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 30
    .local v5, detailsContinentName:Landroid/widget/TextView;
    const v16, 0x7f060008

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/Details;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 31
    .local v6, detailsHour:Landroid/widget/TextView;
    const v16, 0x7f060009

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/Details;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 33
    .local v7, detailsInfo:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    const v17, 0x7f050033

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/Details;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 35
    .local v8, h12clock:Z
    invoke-static {v15}, Lcom/Clocker/World/misc/TimezoneUtils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 37
    .local v14, time:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 38
    invoke-static {v14}, Lcom/Clocker/World/misc/TimezoneUtils;->convertTo12h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 40
    :cond_0
    invoke-static {v15}, Lcom/Clocker/World/misc/TimezoneUtils;->parseCity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {v15}, Lcom/Clocker/World/misc/TimezoneUtils;->getContinent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/Clocker/World/misc/TimezoneUtils;->getTzString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v15}, Lcom/Clocker/World/misc/TimezoneUtils;->getTimeDifference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f05002d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/Details;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    const v17, 0x7f050034

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/Details;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 47
    .local v12, standardFonts:Z
    if-nez v12, :cond_1

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/Clocker/World/gui/Details;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    const-string v17, "jmacscrl.ttf"

    invoke-static/range {v16 .. v17}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    .line 49
    .local v13, textTypeface:Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/Clocker/World/gui/Details;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    const-string v17, "bravenewera.ttf"

    invoke-static/range {v16 .. v17}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 51
    .local v3, clockTypeface:Landroid/graphics/Typeface;
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    invoke-virtual {v4}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 53
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    invoke-virtual {v5}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 55
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    invoke-virtual {v6}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 57
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    invoke-virtual {v7}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 61
    .end local v3           #clockTypeface:Landroid/graphics/Typeface;
    .end local v13           #textTypeface:Landroid/graphics/Typeface;
    :cond_1
    const v16, 0x7f06000a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/Clocker/World/gui/Details;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 63
    .local v10, mapBtn:Landroid/widget/Button;
    new-instance v16, Lcom/Clocker/World/gui/Details$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/Clocker/World/gui/Details$1;-><init>(Lcom/Clocker/World/gui/Details;Landroid/widget/TextView;)V

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

######
##  set this mapBtn to View.GONE
## v1 here must be const/16, otherwise apktool will crash, but why?
## check the above code using v1
    .line 77
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
######
    return-void
.end method

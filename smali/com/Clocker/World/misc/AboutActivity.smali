.class public Lcom/Clocker/World/misc/AboutActivity;
.super Landroid/preference/PreferenceActivity;
.source "AboutActivity.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;,
        Lcom/Clocker/World/misc/AboutActivity$OnStartupChangeLogListener;,
        Lcom/Clocker/World/misc/AboutActivity$OnStartupEulaListener;
    }
.end annotation


# static fields
.field private static final ASSET_CHANGELOG:Ljava/lang/String; = "CHANGELOG"

.field private static final ASSET_EULA:Ljava/lang/String; = "EULA"

.field private static final ASSET_FAQ:Ljava/lang/String; = "FAQ"

.field private static final ASSET_PRIVACY:Ljava/lang/String; = "PRIVACY"

.field private static final ASSET_README:Ljava/lang/String; = "README"

.field private static final ASSET_TODO:Ljava/lang/String; = "TODO"

.field private static final EXTRA_AUTHOR_EMAIL:Ljava/lang/String; = "EXTRA_AUTHOR_EMAIL"

.field private static final EXTRA_AUTHOR_MARKET_NAME:Ljava/lang/String; = "EXTRA_AUTHOR_MARKET_NAME"

.field private static final EXTRA_AUTHOR_NAME:Ljava/lang/String; = "EXTRA_AUTHOR_NAME"

.field private static final EXTRA_AUTHOR_SITE:Ljava/lang/String; = "EXTRA_AUTHOR_SITE"

.field private static final EXTRA_DONATE_URL:Ljava/lang/String; = "EXTRA_DONATE_URL"

.field private static final EXTRA_REPORT_BUG_URL:Ljava/lang/String; = "EXTRA_REPORT_BUG_URL"

.field private static final EXTRA_SHOW_IN_MARKET:Ljava/lang/String; = "EXTRA_SHOW_IN_MARKET"

.field private static final PREFS_ABOUT_ACTIVITY:Ljava/lang/String; = "PREFS_ABOUT_ACTIVITY"

.field private static final PREF_EULA_KEY:Ljava/lang/String; = "PREF_EULA_KEY"

.field private static final PREF_LAST_VERSION_KEY:Ljava/lang/String; = "PREF_LAST_VERSION_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private varargs addPreferenceCategory(Landroid/preference/PreferenceScreen;I[Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "titleResId"
    .parameter "preferences"

    .prologue
    const/4 v5, 0x0

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, addPreference:Z
    array-length v3, p3

    move v4, v5

    :goto_0
    if-lt v4, v3, :cond_0

    .line 372
    if-eqz v0, :cond_4

    .line 373
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 374
    .local v2, preferenceCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v2, p2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 375
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 376
    array-length v3, p3

    move v4, v5

    :goto_1
    if-lt v4, v3, :cond_2

    .line 379
    const/4 v3, 0x1

    .line 381
    .end local v2           #preferenceCategory:Landroid/preference/PreferenceCategory;
    :goto_2
    return v3

    .line 369
    :cond_0
    aget-object v1, p3, v4

    .line 370
    .local v1, preference:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 369
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    .end local v1           #preference:Landroid/preference/Preference;
    .restart local v2       #preferenceCategory:Landroid/preference/PreferenceCategory;
    :cond_2
    aget-object v1, p3, v4

    .line 377
    .restart local v1       #preference:Landroid/preference/Preference;
    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 376
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #preference:Landroid/preference/Preference;
    .end local v2           #preferenceCategory:Landroid/preference/PreferenceCategory;
    :cond_4
    move v3, v5

    .line 381
    goto :goto_2
.end method

.method private assetExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/Clocker/World/misc/AboutActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    const/4 v1, 0x1

    .line 481
    :goto_0
    return v1

    .line 480
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 481
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createDialogView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "filename"

    .prologue
    const/4 v7, 0x1

    .line 334
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 337
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 338
    .local v2, webView:Landroid/webkit/WebView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, 0x3f80

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    const-string v3, "file:///android_asset/%1$s"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 355
    new-instance v3, Lcom/Clocker/World/misc/AboutActivity$5;

    invoke-direct {v3, p0}, Lcom/Clocker/World/misc/AboutActivity$5;-><init>(Landroid/content/Context;)V

    .line 364
    return-object v0
.end method

.method public static getAboutActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "authorName"
    .parameter "authorSite"
    .parameter "authorMail"
    .parameter "donateUrl"
    .parameter "showInAndroidMarketUrl"
    .parameter "authorAndroidMarketName"
    .parameter "reportBugUrl"

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/Clocker/World/misc/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "EXTRA_AUTHOR_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "EXTRA_AUTHOR_SITE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "EXTRA_AUTHOR_EMAIL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :cond_2
    if-eqz p4, :cond_3

    const-string v1, "EXTRA_DONATE_URL"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    :cond_3
    if-eqz p5, :cond_4

    const-string v1, "EXTRA_SHOW_IN_MARKET"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    :cond_4
    if-eqz p6, :cond_5

    const-string v1, "EXTRA_AUTHOR_MARKET_NAME"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    :cond_5
    if-eqz p7, :cond_6

    const-string v1, "EXTRA_REPORT_BUG_URL"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    :cond_6
    return-object v0
.end method

.method private static getCurrentVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 394
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 395
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    goto :goto_0
.end method

.method private getPreferenceAuthorMarket(Ljava/lang/String;II)Landroid/preference/Preference;
    .locals 7
    .parameter "extra"
    .parameter "titleResId"
    .parameter "summaryResId"

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/Clocker/World/misc/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, authorMarket:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 438
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 439
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 440
    invoke-virtual {v1, p3}, Landroid/preference/Preference;->setSummary(I)V

    .line 441
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://search?q=pub:Android Tools"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object v2, v1

    .line 444
    .end local v1           #preference:Landroid/preference/Preference;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPreferenceFromAssetExtra(Ljava/lang/String;II)Landroid/preference/Preference;
    .locals 3
    .parameter "fileName"
    .parameter "titleResId"
    .parameter "summaryResId"

    .prologue
    const/4 v2, 0x0

    .line 464
    invoke-direct {p0, p1}, Lcom/Clocker/World/misc/AboutActivity;->assetExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    new-instance v0, Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;

    invoke-direct {v0, p0, p0, p2, p1}, Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;-><init>(Lcom/Clocker/World/misc/AboutActivity;Landroid/content/Context;ILjava/lang/String;)V

    .line 466
    .local v0, dialogPreference:Landroid/preference/DialogPreference;
    invoke-virtual {v0, p3}, Landroid/preference/DialogPreference;->setSummary(I)V

    .line 467
    invoke-virtual {v0, v2}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 471
    .end local v0           #dialogPreference:Landroid/preference/DialogPreference;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private getPreferenceFromMailExtra(Ljava/lang/String;II)Landroid/preference/Preference;
    .locals 8
    .parameter "extra"
    .parameter "titleResId"
    .parameter "summaryResId"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/Clocker/World/misc/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 450
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "plain/text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v3, "android.intent.extra.EMAIL"

    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v7

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "New mail from %1$s"

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f050022

    invoke-virtual {p0, v6}, Lcom/Clocker/World/misc/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 455
    .local v2, preference:Landroid/preference/Preference;
    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 456
    invoke-virtual {v2, p3}, Landroid/preference/Preference;->setSummary(I)V

    .line 457
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object v3, v2

    .line 460
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #preference:Landroid/preference/Preference;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getPreferenceFromStringExtra(Ljava/lang/String;I)Landroid/preference/Preference;
    .locals 3
    .parameter "extra"
    .parameter "titleResId"

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/Clocker/World/misc/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, extraValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 403
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 404
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 405
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v2, v1

    .line 408
    .end local v1           #preference:Landroid/preference/Preference;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPreferenceFromUrlExtra(Ljava/lang/String;II)Landroid/preference/Preference;
    .locals 5
    .parameter "extra"
    .parameter "titleResId"
    .parameter "summaryResId"

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/Clocker/World/misc/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 414
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, preference:Landroid/preference/Preference;
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 416
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setSummary(I)V

    .line 417
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object v2, v0

    .line 420
    .end local v0           #preference:Landroid/preference/Preference;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPreferenceMarket(Ljava/lang/String;II)Landroid/preference/Preference;
    .locals 8
    .parameter "extra"
    .parameter "titleResId"
    .parameter "summaryResId"

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/Clocker/World/misc/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, flag:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "TRUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 427
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 428
    invoke-virtual {v1, p3}, Landroid/preference/Preference;->setSummary(I)V

    .line 429
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://search?q=pname:com.Clocker.World"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/Clocker/World/misc/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object v2, v1

    .line 432
    .end local v1           #preference:Landroid/preference/Preference;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPreferenceVersion()Landroid/preference/Preference;
    .locals 5

    .prologue
    .line 385
    invoke-static {p0}, Lcom/Clocker/World/misc/AboutActivity;->getCurrentVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, currentVersion:Ljava/lang/String;
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 387
    .local v1, versionPreference:Landroid/preference/Preference;
    const v2, 0x7f050022

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 388
    const v2, 0x7f050003

    invoke-virtual {p0, v2}, Lcom/Clocker/World/misc/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    return-object v1
.end method

.method public static showChangeLogDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 268
    const v0, 0x7f05000d

    const-string v1, "CHANGELOG"

    invoke-static {p0, v0, v1}, Lcom/Clocker/World/misc/AboutActivity;->showGenericDialog(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static showEulaDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 275
    const v0, 0x7f05000f

    const-string v1, "EULA"

    invoke-static {p0, v0, v1}, Lcom/Clocker/World/misc/AboutActivity;->showGenericDialog(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static showFaqDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 261
    const v0, 0x7f05000b

    const-string v1, "FAQ"

    invoke-static {p0, v0, v1}, Lcom/Clocker/World/misc/AboutActivity;->showGenericDialog(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static showGenericDialog(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "titleResId"
    .parameter "filename"

    .prologue
    .line 299
    invoke-static {p0, p2}, Lcom/Clocker/World/misc/AboutActivity;->createDialogView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 300
    .local v1, dialogView:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 303
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 304
    return-void
.end method

.method public static showPrivacyDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 282
    const v0, 0x7f050013

    const-string v1, "PRIVACY"

    invoke-static {p0, v0, v1}, Lcom/Clocker/World/misc/AboutActivity;->showGenericDialog(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static showReadmeDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 254
    const v0, 0x7f050009

    const-string v1, "README"

    invoke-static {p0, v0, v1}, Lcom/Clocker/World/misc/AboutActivity;->showGenericDialog(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static showStartupChangeLog(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/Clocker/World/misc/AboutActivity;->showStartupChangeLog(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static showStartupChangeLog(Landroid/content/Context;Z)Z
    .locals 9
    .parameter "context"
    .parameter "forceShow"

    .prologue
    const/4 v7, 0x0

    const-string v8, "PREF_LAST_VERSION_KEY"

    .line 226
    invoke-static {p0}, Lcom/Clocker/World/misc/AboutActivity;->getCurrentVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, currentVersion:Ljava/lang/String;
    const-string v5, "PREFS_ABOUT_ACTIVITY"

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 228
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v5, "PREF_LAST_VERSION_KEY"

    invoke-interface {v4, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, lastVersion:Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "PREF_LAST_VERSION_KEY"

    invoke-interface {v5, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_2

    .line 231
    :cond_0
    const-string v5, "CHANGELOG"

    invoke-static {p0, v5}, Lcom/Clocker/World/misc/AboutActivity;->createDialogView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 232
    .local v2, dialogView:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 234
    const v5, 0x7f05000d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 236
    const v5, 0x104000a

    new-instance v6, Lcom/Clocker/World/misc/AboutActivity$4;

    invoke-direct {v6}, Lcom/Clocker/World/misc/AboutActivity$4;-><init>()V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 243
    instance-of v5, p0, Lcom/Clocker/World/misc/AboutActivity$OnStartupChangeLogListener;

    if-eqz v5, :cond_1

    check-cast p0, Lcom/Clocker/World/misc/AboutActivity$OnStartupChangeLogListener;

    .end local p0
    invoke-interface {p0, v3, v1}, Lcom/Clocker/World/misc/AboutActivity$OnStartupChangeLogListener;->onVersionChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v5, v7

    .line 246
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #dialogView:Landroid/view/View;
    :goto_0
    return v5

    .restart local p0
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static showStartupEula(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/Clocker/World/misc/AboutActivity;->showStartupEula(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static showStartupEula(Landroid/content/Context;Z)Z
    .locals 7
    .parameter "context"
    .parameter "forceShow"

    .prologue
    const/4 v6, 0x0

    .line 179
    const-string v4, "PREFS_ABOUT_ACTIVITY"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 180
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v4, "PREF_EULA_KEY"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 181
    .local v2, isEulaAccepted:Z
    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 182
    :cond_0
    const-string v4, "EULA"

    invoke-static {p0, v4}, Lcom/Clocker/World/misc/AboutActivity;->createDialogView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, dialogView:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 185
    const v4, 0x7f05000f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 187
    const v4, 0x7f050011

    new-instance v5, Lcom/Clocker/World/misc/AboutActivity$2;

    invoke-direct {v5, v3, p0}, Lcom/Clocker/World/misc/AboutActivity$2;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    const v4, 0x7f050012

    new-instance v5, Lcom/Clocker/World/misc/AboutActivity$3;

    invoke-direct {v5, v3, p0}, Lcom/Clocker/World/misc/AboutActivity$3;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    move v4, v6

    .line 205
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogView:Landroid/view/View;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static showTodoDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 289
    const v0, 0x7f050015

    const-string v1, "TODO"

    invoke-static {p0, v0, v1}, Lcom/Clocker/World/misc/AboutActivity;->showGenericDialog(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance v4, Landroid/widget/LinearLayout;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 107
    .local v4, layout:Landroid/widget/LinearLayout;
    const/16 v22, 0x1

    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    new-instance v5, Landroid/widget/ListView;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v5, listView:Landroid/widget/ListView;
    const v22, 0x102000a

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 111
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    const/high16 v25, 0x3f80

    invoke-direct/range {v22 .. v25}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v6, Landroid/widget/TextView;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v6, poweredView:Landroid/widget/TextView;
    const-string v22, "Powered by Android Tools"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/16 v22, 0x1

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    new-instance v22, Lcom/Clocker/World/misc/AboutActivity$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/Clocker/World/misc/AboutActivity$1;-><init>(Lcom/Clocker/World/misc/AboutActivity;)V

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/Clocker/World/misc/AboutActivity;->setContentView(Landroid/view/View;)V

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceVersion()Landroid/preference/Preference;

    move-result-object v21

    .line 139
    .local v21, preferenceVersion:Landroid/preference/Preference;
    const-string v22, "EXTRA_AUTHOR_NAME"

    const v23, 0x7f050004

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromStringExtra(Ljava/lang/String;I)Landroid/preference/Preference;

    move-result-object v9

    .line 140
    .local v9, preferenceAuthorName:Landroid/preference/Preference;
    const-string v22, "EXTRA_AUTHOR_SITE"

    const v23, 0x7f050005

    const v24, 0x7f050006

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromUrlExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v10

    .line 141
    .local v10, preferenceAuthorSite:Landroid/preference/Preference;
    const-string v22, "EXTRA_AUTHOR_EMAIL"

    const v23, 0x7f050007

    const v24, 0x7f050008

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromMailExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v7

    .line 142
    .local v7, preferenceAuthorMail:Landroid/preference/Preference;
    const-string v22, "README"

    const v23, 0x7f050009

    const v24, 0x7f05000a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromAssetExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v17

    .line 143
    .local v17, preferenceReadme:Landroid/preference/Preference;
    const-string v22, "FAQ"

    const v23, 0x7f05000b

    const v24, 0x7f05000c

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromAssetExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v13

    .line 144
    .local v13, preferenceFaq:Landroid/preference/Preference;
    const-string v22, "CHANGELOG"

    const v23, 0x7f05000d

    const v24, 0x7f05000e

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromAssetExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v11

    .line 145
    .local v11, preferenceChangeLog:Landroid/preference/Preference;
    const-string v22, "EULA"

    const v23, 0x7f05000f

    const v24, 0x7f050010

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromAssetExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v14

    .line 146
    .local v14, preferenceLicense:Landroid/preference/Preference;
    const-string v22, "PRIVACY"

    const v23, 0x7f050013

    const v24, 0x7f050014

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromAssetExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v16

    .line 147
    .local v16, preferencePrivacy:Landroid/preference/Preference;
    const-string v22, "TODO"

    const v23, 0x7f050015

    const v24, 0x7f050016

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromAssetExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v20

    .line 148
    .local v20, preferenceTodo:Landroid/preference/Preference;
    const-string v22, "EXTRA_DONATE_URL"

    const v23, 0x7f050017

    const v24, 0x7f050018

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromUrlExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v12

    .line 149
    .local v12, preferenceDonate:Landroid/preference/Preference;
    const-string v22, "EXTRA_SHOW_IN_MARKET"

    const v23, 0x7f050019

    const v24, 0x7f05001a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceMarket(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v15

    .line 150
    .local v15, preferenceMarket:Landroid/preference/Preference;
    const-string v22, "EXTRA_AUTHOR_MARKET_NAME"

    const v23, 0x7f05001b

    const v24, 0x7f05001c

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceAuthorMarket(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v8

    .line 151
    .local v8, preferenceAuthorMarket:Landroid/preference/Preference;
    const-string v22, "EXTRA_REPORT_BUG_URL"

    const v23, 0x7f05001d

    const v24, 0x7f05001e

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceFromUrlExtra(Ljava/lang/String;II)Landroid/preference/Preference;

    move-result-object v18

    .line 153
    .local v18, preferenceReportBug:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/Clocker/World/misc/AboutActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 154
    .local v19, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/high16 v22, 0x7f05

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v21, v23, v24

    const/16 v24, 0x1

    aput-object v9, v23, v24

    const/16 v24, 0x2

    aput-object v10, v23, v24

    const/16 v24, 0x3

    aput-object v7, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->addPreferenceCategory(Landroid/preference/PreferenceScreen;I[Landroid/preference/Preference;)Z

    .line 155
    const v22, 0x7f050001

    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v17, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v11, v23, v24

    const/16 v24, 0x3

    aput-object v14, v23, v24

    const/16 v24, 0x4

    aput-object v16, v23, v24

    const/16 v24, 0x5

    aput-object v20, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->addPreferenceCategory(Landroid/preference/PreferenceScreen;I[Landroid/preference/Preference;)Z

    .line 156
    const v22, 0x7f050002

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Landroid/preference/Preference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v12, v23, v24

    const/16 v24, 0x1

    aput-object v15, v23, v24

    const/16 v24, 0x2

    aput-object v8, v23, v24

    const/16 v24, 0x3

    aput-object v18, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/Clocker/World/misc/AboutActivity;->addPreferenceCategory(Landroid/preference/PreferenceScreen;I[Landroid/preference/Preference;)Z

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/Clocker/World/misc/AboutActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 159
    return-void
.end method

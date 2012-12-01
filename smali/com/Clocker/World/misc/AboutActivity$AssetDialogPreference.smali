.class Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;
.super Landroid/preference/DialogPreference;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Clocker/World/misc/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssetDialogPreference"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/Clocker/World/misc/AboutActivity;


# direct methods
.method public constructor <init>(Lcom/Clocker/World/misc/AboutActivity;Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "titleResId"
    .parameter "fileName"

    .prologue
    .line 493
    iput-object p1, p0, Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;->this$0:Lcom/Clocker/World/misc/AboutActivity;

    .line 489
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 490
    invoke-virtual {p0, p3}, Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;->setTitle(I)V

    .line 491
    invoke-virtual {p0, p3}, Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;->setDialogTitle(I)V

    .line 492
    iput-object p4, p0, Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 499
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 500
    .local v0, webView:Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/%1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/Clocker/World/misc/AboutActivity$AssetDialogPreference;->fileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 503
    return-void
.end method

.class Lcom/Clocker/World/misc/AboutActivity$3;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Clocker/World/misc/AboutActivity;->showStartupEula(Landroid/content/Context;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Clocker/World/misc/AboutActivity$3;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/Clocker/World/misc/AboutActivity$3;->val$context:Landroid/content/Context;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/Clocker/World/misc/AboutActivity$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_EULA_KEY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    iget-object v0, p0, Lcom/Clocker/World/misc/AboutActivity$3;->val$context:Landroid/content/Context;

    instance-of v0, v0, Lcom/Clocker/World/misc/AboutActivity$OnStartupEulaListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/Clocker/World/misc/AboutActivity$3;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/Clocker/World/misc/AboutActivity$OnStartupEulaListener;

    invoke-interface {v0, v2}, Lcom/Clocker/World/misc/AboutActivity$OnStartupEulaListener;->onEulaAction(Z)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/Clocker/World/misc/AboutActivity$3;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/Clocker/World/misc/AboutActivity$3;->val$context:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 200
    :cond_1
    return-void
.end method

.class Lcom/Clocker/World/misc/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Clocker/World/misc/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Clocker/World/misc/AboutActivity;


# direct methods
.method constructor <init>(Lcom/Clocker/World/misc/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Clocker/World/misc/AboutActivity$1;->this$0:Lcom/Clocker/World/misc/AboutActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/Clocker/World/misc/AboutActivity$1;->this$0:Lcom/Clocker/World/misc/AboutActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://android.marcoduff.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/Clocker/World/misc/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

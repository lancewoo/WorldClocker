.class Lcom/Clocker/World/gui/Details$1;
.super Ljava/lang/Object;
.source "Details.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Clocker/World/gui/Details;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Clocker/World/gui/Details;

.field private final synthetic val$detailsCityName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/Clocker/World/gui/Details;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Clocker/World/gui/Details$1;->this$0:Lcom/Clocker/World/gui/Details;

    iput-object p2, p0, Lcom/Clocker/World/gui/Details$1;->val$detailsCityName:Landroid/widget/TextView;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/Clocker/World/gui/Details$1;->val$detailsCityName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, city:Ljava/lang/String;
    const/16 v2, 0x20

    const/16 v3, 0x2b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "geo:0,0?q="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    .local v1, map:Landroid/content/Intent;
    iget-object v2, p0, Lcom/Clocker/World/gui/Details$1;->this$0:Lcom/Clocker/World/gui/Details;

    invoke-virtual {v2, v1}, Lcom/Clocker/World/gui/Details;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

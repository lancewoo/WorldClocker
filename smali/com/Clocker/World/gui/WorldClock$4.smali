.class Lcom/Clocker/World/gui/WorldClock$4;
.super Ljava/lang/Object;
.source "WorldClock.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Clocker/World/gui/WorldClock;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Clocker/World/gui/WorldClock;


# direct methods
.method constructor <init>(Lcom/Clocker/World/gui/WorldClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Clocker/World/gui/WorldClock$4;->this$0:Lcom/Clocker/World/gui/WorldClock;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock$4;->this$0:Lcom/Clocker/World/gui/WorldClock;

    iget-object v3, v3, Lcom/Clocker/World/gui/WorldClock;->rawTimezonesList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    .local v0, city:Ljava/lang/String;
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock$4;->this$0:Lcom/Clocker/World/gui/WorldClock;

    invoke-virtual {v3}, Lcom/Clocker/World/gui/WorldClock;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, pkg:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock$4;->this$0:Lcom/Clocker/World/gui/WorldClock;

    invoke-virtual {v3}, Lcom/Clocker/World/gui/WorldClock;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/Clocker/World/gui/Details;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".myString"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v3, p0, Lcom/Clocker/World/gui/WorldClock$4;->this$0:Lcom/Clocker/World/gui/WorldClock;

    invoke-virtual {v3, v1}, Lcom/Clocker/World/gui/WorldClock;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void
.end method

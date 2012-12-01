.class Lcom/Clocker/World/gui/TimeZonePicker$2;
.super Ljava/lang/Object;
.source "TimeZonePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Clocker/World/gui/TimeZonePicker;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/Clocker/World/gui/TimeZonePicker;


# direct methods
.method constructor <init>(Lcom/Clocker/World/gui/TimeZonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Clocker/World/gui/TimeZonePicker$2;->this$0:Lcom/Clocker/World/gui/TimeZonePicker;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 52
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 53
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker$2;->this$0:Lcom/Clocker/World/gui/TimeZonePicker;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " > "

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x5f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/Clocker/World/gui/TimeZonePicker;->saveTimeZone(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker$2;->this$0:Lcom/Clocker/World/gui/TimeZonePicker;

    iget-object v3, p0, Lcom/Clocker/World/gui/TimeZonePicker$2;->this$0:Lcom/Clocker/World/gui/TimeZonePicker;

    const v4, 0x7f050027

    invoke-virtual {v3, v4}, Lcom/Clocker/World/gui/TimeZonePicker;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 55
    iget-object v2, p0, Lcom/Clocker/World/gui/TimeZonePicker$2;->this$0:Lcom/Clocker/World/gui/TimeZonePicker;

    invoke-virtual {v2}, Lcom/Clocker/World/gui/TimeZonePicker;->finish()V

    .line 56
    return-void
.end method

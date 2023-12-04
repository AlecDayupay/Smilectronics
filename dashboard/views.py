from django.shortcuts import render
from .models import (warehouse_staff, supplier, batch, client_company, 
                     item, sales_agent, delivery, delivery_item, issuance, 
                     issuance_item, sales_invoice, invoice_item, item_return, 
                     return_item, item_transfer, transfer_item, discount)

def dashboard(request):
    return render(request,"dashboard/dashboard.html")

def query(request):
    if request.method == 'POST':
        models = {
            "dashboard_warehouse_staff": warehouse_staff, "dashboard_supplier": supplier,
            "dashboard_batch": batch, "dashboard_client_company": client_company,
            "dashboard_item": item, "dashboard_sales_agent": sales_agent,
            "dashboard_delivery": delivery, "dashboard_delivery_item": delivery_item,
            "dashboard_issuance": issuance, "dashboard_issuance_item": issuance_item,
            "dashboard_sales_invoice": sales_invoice, "dashboard_invoice_item": invoice_item,
            "dashboard_item_return": item_return, "dashboard_return_item": return_item,
            "dashboard_item_transfer": item_transfer, "dashboard_transfer_item": transfer_item,
            "dashboard_discount": discount
        }
        try:
            values = request.POST.get('values').split(", ")
            objects = models[request.POST.get('model')].objects.values_list(*values)
            return render(request, 'dashboard/query.html', {'values':values, 'model':request.POST.get('model'), 'objects':objects})
        except:
            return render(request, 'dashboard/query.html', {"values": ""})
    return render(request, 'dashboard/query.html', {"values": ""})


def warehouse_staff_view(request):
    warehouse_staff_objects = warehouse_staff.objects.all()
    return render(request,"dashboard/warehouse_staff.html",{'warehouse_staff':warehouse_staff_objects})

def supplier_view(request):
    supplier_objects = supplier.objects.all()
    return render(request,"dashboard/supplier.html",{'supplier':supplier_objects})

def batch_view(request):
    batch_objects = batch.objects.all()
    return render(request,"dashboard/batch.html",{'batch':batch_objects})

def client_company_view(request):
    client_company_objects = client_company.objects.all()
    return render(request,"dashboard/client_company.html",{'client_company':client_company_objects})

def item_view(request):
    item_objects = item.objects.all()
    return render(request,"dashboard/item.html",{'item':item_objects})

def sales_agent_view(request):
    sales_agent_objects = sales_agent.objects.all()
    return render(request,"dashboard/sales_agent.html",{'sales_agent':sales_agent_objects})

def delivery_view(request):
    delivery_objects = delivery.objects.all()
    delivery_item_objects = delivery_item.objects.all()
    return render(request,"dashboard/delivery.html",{'delivery':delivery_objects, 'delivery_item':delivery_item_objects})

def issuance_view(request):
    issuance_objects = issuance.objects.all()
    issuance_item_objects = issuance_item.objects.all() 
    return render(request,"dashboard/issuance.html",{'issuance':issuance_objects, 'issuance_item':issuance_item_objects})

def sales_invoice_view(request):
    sales_invoice_objects = sales_invoice.objects.all()
    invoice_item_objects = invoice_item.objects.all() 
    return render(request,"dashboard/sales_invoice.html",{'sales_invoice':sales_invoice_objects, 'invoice_item':invoice_item_objects})

def item_return_view(request):
    item_return_objects = item_return.objects.all()
    return_item_objects = return_item.objects.all() 
    return render(request,"dashboard/item_return.html",{'item_return':item_return_objects, 'return_item':return_item_objects})

def item_transfer_view(request):
    item_transfer_objects = item_transfer.objects.all()
    transfer_item_objects = transfer_item.objects.all() 
    return render(request,"dashboard/item_transfer.html",{'item_transfer':item_transfer_objects, 'transfer_item':transfer_item_objects})

def discount_view(request):
    discount_objects = discount.objects.all()
    return render(request,"dashboard/discount.html",{'discount':discount_objects})
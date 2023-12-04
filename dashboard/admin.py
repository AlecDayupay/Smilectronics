from django.contrib import admin
from .models import (warehouse_staff, supplier, batch, client_company, 
                     item, sales_agent, delivery, delivery_item, issuance, 
                     issuance_item, sales_invoice, invoice_item, item_return, 
                     return_item, item_transfer, transfer_item, discount)

class warehouse_staffInline(admin.TabularInline):
    model = warehouse_staff

class supplierInline(admin.TabularInline):
    model = supplier

class batchInline(admin.TabularInline):
    model = batch

class client_companyInline(admin.TabularInline):
    model = client_company

class itemInline(admin.TabularInline):
    model = item

class sales_agentInline(admin.TabularInline):
    model = sales_agent

class deliveryInline(admin.TabularInline):
    model = delivery

class issuanceInline(admin.TabularInline):
    model = issuance

class sales_invoiceInline(admin.TabularInline):
    model = sales_invoice

class item_returnInline(admin.TabularInline):
    model = item_return

class item_transferInline(admin.TabularInline):
    model = item_transfer

class warehouse_staffAdmin(admin.ModelAdmin):
    model = warehouse_staff
admin.site.register(warehouse_staff, warehouse_staffAdmin)

class supplierAdmin(admin.ModelAdmin):
    model = supplier
admin.site.register(supplier, supplierAdmin)

class batchAdmin(admin.ModelAdmin):
    model = batch
admin.site.register(batch, batchAdmin)

class client_companyAdmin(admin.ModelAdmin):
    model = client_company
admin.site.register(client_company, client_companyAdmin)

class itemAdmin(admin.ModelAdmin):
    model = item
    supplierinline = [supplierInline]
admin.site.register(item, itemAdmin)

class sales_agentAdmin(admin.ModelAdmin):
    model = sales_agent
    client_companyinline = [client_companyInline]
admin.site.register(sales_agent, sales_agentAdmin)

class deliveryAdmin(admin.ModelAdmin):
    model = delivery
    supplierinline = [supplierInline]
    warehouse_staffinline = [warehouse_staffInline]
admin.site.register(delivery, deliveryAdmin)

class delivery_itemAdmin(admin.ModelAdmin):
    model = delivery_item
    deliveryinline = [deliveryInline]
    iteminline = [itemInline]
admin.site.register(delivery_item, delivery_itemAdmin)

class issuanceAdmin(admin.ModelAdmin):
    model = issuance
    warehouse_staffinline = [warehouse_staffInline]
    batchinline = [batchInline]
    sales_agentinline = [sales_agentInline]
admin.site.register(issuance, issuanceAdmin)

class issuance_itemAdmin(admin.ModelAdmin):
    model = issuance_item
    issuanceinline = [issuanceInline]
    iteminline = [itemInline]
admin.site.register(issuance_item, issuance_itemAdmin)

class sales_invoiceAdmin(admin.ModelAdmin):
    model = sales_invoice
    sales_agentinline = [sales_agentInline]
    client_companyinline = [client_companyInline]
admin.site.register(sales_invoice, sales_invoiceAdmin)

class invoice_itemAdmin(admin.ModelAdmin):
    model = invoice_item
    sales_invoiceinline = [sales_invoiceInline]
    iteminline = [itemInline]
admin.site.register(invoice_item, invoice_itemAdmin)

class item_returnAdmin(admin.ModelAdmin):
    model = item_return
    warehouse_staffinline = [warehouse_staffInline]
    batchinline = [batchInline]
admin.site.register(item_return, item_returnAdmin)

class return_itemAdmin(admin.ModelAdmin):
    model = return_item
    item_returninline = [item_returnInline]
    iteminline = [itemInline]
admin.site.register(return_item, return_itemAdmin)

class item_transferAdmin(admin.ModelAdmin):
    model = item_transfer
    frombatchinline = [batchInline]
    tobatchinline = [batchInline]
    fromagentinline = [sales_agentInline]
    toagentinline = [sales_agentInline]
admin.site.register(item_transfer, item_transferAdmin)

class transfer_itemAdmin(admin.ModelAdmin):
    model = transfer_item
    item_transferinline = [item_transferInline]
    iteminline = [itemInline]
admin.site.register(transfer_item, transfer_itemAdmin)

class discountAdmin(admin.ModelAdmin):
    model = discount
    client_companyinline = [client_companyInline]
    iteminline = [itemInline]
admin.site.register(discount, discountAdmin)
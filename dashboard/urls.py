from django.urls import path
from dashboard import views

urlpatterns = [
    path('', views.dashboard),
    path('query/', views.query),
    path('warehouse_staff/', views.warehouse_staff_view),
    path('supplier/', views.supplier_view),
    path('batch/', views.batch_view),
    path('client_company/', views.client_company_view),
    path('item/', views.item_view),
    path('sales_agent/', views.sales_agent_view),
    path('delivery/', views.delivery_view),
    path('issuance/', views.issuance_view),
    path('sales_invoice/', views.sales_invoice_view),
    path('item_return/', views.item_return_view),
    path('item_transfer/', views.item_transfer_view),
    path('discount/', views.discount_view),
]
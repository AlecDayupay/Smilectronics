from django.db import models

class warehouse_staff(models.Model):
    staffid = models.IntegerField(primary_key=True)
    lastname = models.CharField(max_length = 255)
    firstname = models.CharField(max_length = 255)

class supplier(models.Model):
    supplierid = models.IntegerField(primary_key=True)
    name = models.CharField(max_length = 255)

class batch(models.Model):
    batchid = models.IntegerField(primary_key = True)

class client_company(models.Model):
    clientid = models.IntegerField(primary_key = True)
    name = models.CharField(max_length = 255)

class item(models.Model):
    itemid = models.IntegerField(primary_key = True)
    description = models.CharField(max_length = 255)
    cost = models.FloatField()
    srp = models.FloatField()
    classification = models.CharField(max_length = 255)
    supplierid = models.ForeignKey(supplier, on_delete=models.CASCADE)

class sales_agent(models.Model):
    agentid = models.IntegerField(primary_key = True)
    lastname = models.CharField(max_length = 255)
    firstname = models.CharField(max_length = 255)
    clientid = models.ForeignKey(client_company, on_delete = models.CASCADE)

class delivery(models.Model):
    deliveryid = models.IntegerField(primary_key = True)
    deliverydate = models.DateField()
    deliverytime = models.TimeField()
    supplierid = models.ForeignKey(supplier, on_delete = models.CASCADE)
    staffid = models.ForeignKey(warehouse_staff, on_delete = models.CASCADE)

class delivery_item(models.Model):
    deliveryitemid = models.CharField(max_length = 255, primary_key = True)
    deliveryid = models.ForeignKey(delivery, on_delete = models.CASCADE)
    itemid = models.ForeignKey(item, on_delete = models.CASCADE)
    itemquantity = models.IntegerField()
    cost = models.FloatField()
    totalcost = models.FloatField()

class issuance(models.Model):
    issuanceid = models.IntegerField(primary_key = True)
    issuancedate = models.DateField()
    staffid = models.ForeignKey(warehouse_staff, on_delete = models.CASCADE)
    batchid = models.ForeignKey(batch, on_delete = models.CASCADE)    
    agentid = models.ForeignKey(sales_agent, on_delete = models.CASCADE)

class issuance_item(models.Model):
    issuanceitemid = models.CharField(max_length = 255, primary_key = True)    
    issuanceid = models.ForeignKey(issuance, on_delete = models.CASCADE)
    itemid = models.ForeignKey(item, on_delete = models.CASCADE)
    itemquantity = models.IntegerField()

class sales_invoice(models.Model):
    invoiceid = models.IntegerField(primary_key = True)
    invoicedate = models.DateField()
    agentid = models.ForeignKey(sales_agent, on_delete = models.CASCADE)
    clientid = models.ForeignKey(client_company, on_delete = models.CASCADE)

class invoice_item(models.Model):
    invoiceitemid = models.CharField(max_length = 255, primary_key = True)
    invoiceid = models.ForeignKey(sales_invoice, on_delete = models.CASCADE)
    itemid = models.ForeignKey(item, on_delete = models.CASCADE)
    itemquantity = models.IntegerField()
    srp = models.FloatField()
    discountrate = models.FloatField()
    totalsales = models.FloatField()

class item_return(models.Model):
    returnid = models.IntegerField(primary_key = True)
    returndate = models.DateField()
    staffid = models.ForeignKey(warehouse_staff, on_delete = models.CASCADE)
    batchid = models.ForeignKey(batch, on_delete = models.CASCADE)

class return_item(models.Model):
    returnitemid = models.CharField(max_length = 255, primary_key = True)
    returnid = models.ForeignKey(item_return, on_delete = models.CASCADE)
    itemid = models.ForeignKey(item, on_delete = models.CASCADE)
    itemquantity = models.IntegerField()

class item_transfer(models.Model):
    transferid = models.IntegerField(primary_key = True)
    transferdate = models.DateField()
    frombatchid = models.ForeignKey(batch, on_delete = models.CASCADE, related_name = "frombatch")
    fromagentid = models.ForeignKey(sales_agent, on_delete = models.CASCADE, related_name = "fromagent")
    tobatchid = models.ForeignKey(batch, on_delete = models.CASCADE, related_name = "tobatch")
    toagentid = models.ForeignKey(sales_agent, on_delete = models.CASCADE, related_name = "toagent")

class transfer_item(models.Model):
    transferitemid = models.CharField(max_length = 255, primary_key = True)
    transferid = models.ForeignKey(item_transfer, on_delete = models.CASCADE)
    itemid = models.ForeignKey(item, on_delete = models.CASCADE)
    itemquantity = models.IntegerField()

class discount(models.Model):
    discountid = models.CharField(max_length = 255, primary_key = True)
    clientid = models.ForeignKey(client_company, on_delete = models.CASCADE)
    itemid = models.ForeignKey(item, on_delete = models.CASCADE)
    discountrate = models.FloatField()
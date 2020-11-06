from django.contrib import admin
from MilkonlineApp.models import Category,Aboutus,gallery,Product

# Register your models here.
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name','slug']
    prepopulated_fields = {'slug':('name',)}
admin.site.register(Category,CategoryAdmin)

class ProductAdmin(admin.ModelAdmin):
    list_display = ['name','price','stock','available','created','updated']
    list_editable = ['price','stock','available']
    prepopulated_fields ={'slug':('name',)}
    list_per_page = 20
admin.site.register(Product,ProductAdmin)


class AboutusAdmin(admin.ModelAdmin):
    list_display = ['name','image']
    prepopulated_fields = {'slug':('name',)}
admin.site.register(Aboutus,AboutusAdmin)


admin.site.register(gallery)
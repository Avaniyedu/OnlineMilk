from django.http import HttpResponse
from django.shortcuts import render,get_object_or_404
from MilkonlineApp.models import Category,Product,Aboutus,gallery

# Create your views here.
def index(request):
    p=Product.objects.all()[0:3]
    c=Category.objects.all()
    about=Aboutus.objects.all()
    return render(request,'index.html',{'p':p,'c':c,'about':about})
# def allProdCat(request,c_slug=None):
#     c_page=None
#     products=None
#     if c_slug!=None:
#         c_page=get_object_or_404(Category,slug=c_slug)
#         products=Product.objects.filter(category=c_page,available=True)
#     else:
#         products=Product.objects.all().filter(available=True)
#     return  render(request,'shop/home-2.html',{'category':c_page,'products':products})

def Productdetail(request,c_slug,product_slug):
    product=Product.objects.get(category__slug=c_slug,slug=product_slug)

    return render(request,'single-product.html',{'product':product})

def shop(request):
    pr=Product.objects.all()
    cr=Category.objects.all()
    return render(request,'shop-list.html',{'pr':pr,'cr':cr})




def masonry(request):

    g=gallery.objects.all()
    return render(request,'masonry.html',{'g':g})
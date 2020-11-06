from django.urls import path, include
from . import views

app_name='MilkonlineApp'
urlpatterns=[
    path('', views.index, name='index'),
    path('shop/',views.shop,name='shop'),
    path('masonry/',views.masonry,name='masonry'),

    # path('allp/',views.allProdCat,name='allProdCat'),
    # path('<slug:c_slug>/',views.allProdCat,name='products_by_category'),
    path('<slug:c_slug>/<slug:product_slug>/', views.Productdetail, name='Productdetail')

]

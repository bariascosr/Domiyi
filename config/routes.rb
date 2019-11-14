Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #get 'controlador/accion', to: "controlador#accion"
  


  root 'pages#Welcome'
  
  get 'pages/Destacados', to: "pages#Destacados"

  get 'pages/Comida', to: "pages#Comida"

  get 'pages/Alojamiento', to: "pages#Alojamiento"

  get 'pages/BaresYLicores', to: "pages#BaresYLicores"

  get 'pages/DeporteYEntretenimiento', to: "pages#DeporteYEntretenimiento"

  get 'pages/Productos', to: "pages#Productos"

  get 'pages/Servicios', to: "pages#Servicios"

  get 'pages/Salud', to: "pages#Salud"

  get 'pages/Educacion', to: "pages#Educacion"

  get 'pages/Otros', to: "pages#Otros"

  get 'pages/Guia', to: "pages#Guia"

  get 'pages/Contactanos', to: "pages#Contactanos"

  get 'pages/QuienesSomos', to: "pages#QuienesSomos"

  get 'pages/Recordatorio', to: "pages#Recordatorio"

  get 'pages/Establecimiento', to: "pages#Establecimiento"

  get 'pages/Producto', to: "pages#Producto"

  get "pages/:id" => "pages#Establecimiento" #borrar




end

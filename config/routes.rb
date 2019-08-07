Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #get 'controlador/accion', to: "controlador#accion"
  
  #get 'pages/welcome', to: "pages#welcome"

  root 'pages#Welcome'

  #Destacados
  #Comida
  #Alojamiento
  #Bares y licores
  #Deporte y entretenimiento
  #Productos
  #Servicios
  #Salud
  #Educación
  #Otros



  #Guía
  #Contáctanos
  #¿Quiénes Somos?
  #Recordatorio
  
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


end

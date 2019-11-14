class PagesController < ApplicationController

    def Welcome
    end

    def Destacados
        @establecimientos =  Establecimiento.where(tipo_info: '2')

    end


    def Comida
        @establecimientos =  Establecimiento.where(categoria: '0')
    end

    def Alojamiento
        @establecimientos =  Establecimiento.where(categoria: '1')
    end

    def BaresYLicores
        @establecimientos =  Establecimiento.where(categoria: '2')
    end

    def DeporteYEntretenimiento
        @establecimientos =  Establecimiento.where(categoria: '3')
    end

    def Productos
        @establecimientos =  Establecimiento.where(categoria: '4')
    end

    def Servicios
        @establecimientos =  Establecimiento.where(categoria: '5')
    end

    def Salud
        @establecimientos =  Establecimiento.where(categoria: '6')
    end

    def Educacion
        @establecimientos =  Establecimiento.where(categoria: '7')
    end

    def Otros
        @establecimientos =  Establecimiento.where(categoria: '8')
    end

    def Guia
    end

    def Contactanos
    end

    def QuienesSomos
    end

    def Recordatorio
    end

    def Establecimiento 
        @establecimiento =  Establecimiento.find(params[:id])
        @productos = Producto.where(id_establecimiento: params[:id])
        @galeria = Galeria.where(id_establecimiento: params[:id])
    end

    def Producto
        puts params[:id]
        @producto =  Producto.find(params[:id])
    end
end
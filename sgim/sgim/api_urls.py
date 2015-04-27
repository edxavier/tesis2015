__author__ = 'edx'

from rest_framework import routers
from apps.catalogo.views import (TipoDispoViewSet, EdificioViewSet, OficinaViewSet,
                                 EstadoOpeViewSet, SistemaViewSet,
                                 TipoComponenteViewSet, PersonalViewSet, CargoViewSet,
                                 TipoIncidenteViewSet, EstadoManttoViewSet)
from apps.inventario.view_sets import DispositivoViewSet, ComponenteViewSet, ServicioViewSet
from apps.mantenimiento.view_sets import TareaViewSet, RutinaViewSet

router = routers.DefaultRouter()
router.register(r'catalogo/tipo_disp', TipoDispoViewSet, base_name="TipoDispoViewSet")
router.register(r'catalogo/edificio', EdificioViewSet)
router.register(r'catalogo/oficina', OficinaViewSet)
router.register(r'catalogo/estado_ope', EstadoOpeViewSet)
router.register(r'catalogo/sistema', SistemaViewSet)
router.register(r'catalogo/tipo_componente', TipoComponenteViewSet)
router.register(r'catalogo/personal', PersonalViewSet)
router.register(r'catalogo/cargo', CargoViewSet)
router.register(r'catalogo/tipo_inc', TipoIncidenteViewSet)
router.register(r'catalogo/estado_mantto', EstadoManttoViewSet)

router.register(r'inventario/dispositivos', DispositivoViewSet)
router.register(r'inventario/componentes', ComponenteViewSet)
router.register(r'inventario/servicios', ServicioViewSet)

router.register(r'mantto/tareas', TareaViewSet)
router.register(r'mantto/rutinas', RutinaViewSet)


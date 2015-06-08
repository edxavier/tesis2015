__author__ = 'edx'

from rest_framework import routers
from apps.catalogo.views import (TipoDispoViewSet, EdificioViewSet, OficinaViewSet,
                                 EstadoOpeViewSet, SistemaViewSet,
                                 TipoComponenteViewSet, PersonalViewSet, CargoViewSet,
                                 TipoIncidenteViewSet, EstadoManttoViewSet)
from apps.inventario.view_sets import DispositivoViewSet, ComponenteViewSet, ServicioViewSet
from apps.mantenimiento.view_sets import TareaViewSet, RutinaViewSet, PlanViewSet, BoletaViewSet, UsuarioViewSet
from apps.incidencias.view_sets import IncidenciaViewSet, CambioViewSet
from apps.gestion_red.view_sets import (HostViewSet, BootViewSet,
    GeneralEventViewSet, StorageViewSet, DevicesViewSet, ProcessViewSet,
    MemoryViewSet,LoadViewSet,DiskViewSet, MemoryEntryViewSet, LoadEntryViewSet)

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
router.register(r'mantto/planes', PlanViewSet)
router.register(r'mantto/trabajos', BoletaViewSet)
router.register(r'cuentas/usuarios', UsuarioViewSet)

router.register(r'incidencias/incidentes', IncidenciaViewSet)
router.register(r'incidencias/cambios', CambioViewSet)

router.register(r'gestion/hosts', HostViewSet)
router.register(r'gestion/boot_events', BootViewSet)
router.register(r'gestion/devices', DevicesViewSet)
router.register(r'gestion/general_events', GeneralEventViewSet)

router.register(r'gestion/storages', StorageViewSet)
router.register(r'gestion/process', ProcessViewSet)
router.register(r'gestion/hist_memory', MemoryViewSet, base_name="historial_memoria")
router.register(r'gestion/hist_load', LoadViewSet,base_name="historial_carga")
router.register(r'gestion/disk', DiskViewSet)
router.register(r'gestion/mem_entry', MemoryEntryViewSet)
router.register(r'gestion/load_entry', LoadEntryViewSet)


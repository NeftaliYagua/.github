# ⚠️ REGLAS DE CURSOR - REPOSITORIO PERSONAL ⚠️

**ESTAS REGLAS SON PARA USO EN PROYECTOS FUTUROS.**

Este repositorio contiene reglas aprendidas y refinadas durante el desarrollo de proyectos reales, especialmente del proyecto `reservas` (Laravel 12 + Filament 5.x + Livewire 4.x).

## Reglas Disponibles

1. **`tdd.mdc`** - Test-Driven Development (TDD)
   - Ciclo Red-Green-Refactor obligatorio
   - Pruebas como requisito previo al código
   - Coherencia de pruebas con requerimientos funcionales
   - Pruebas unitarias, funcionales y visuales
   - Verificación antes de declarar completado

2. **`workflow.mdc`** - Workflow y gestión de tareas
   - Creación de incidencias en GitHub
   - Gestión de tareas en consola del agente
   - Documentación en GitHub Discussions/Issues
   - Comunicación clara con el usuario
   - Seguimiento de progreso por fases

## Cómo Usar Estas Reglas

### En un Nuevo Proyecto

1. Copiar `.cursor/rules/` de este repositorio al nuevo proyecto
2. Ajustar según necesidades específicas del proyecto
3. Combinar con reglas existentes del proyecto

### Estructura Recomendada

```
proyecto/
├── .cursor/
│   └── rules/
│       ├── README.md
│       ├── tdd.mdc          # De este repositorio
│       ├── workflow.mdc     # De este repositorio
│       ├── quality.mdc      # Específico del proyecto
│       ├── developer.mdc    # Específico del proyecto
│       ├── security.mdc     # Específico del proyecto
│       └── solid.mdc        # Específico del proyecto
```

## Origen de las Reglas

Estas reglas fueron aprendidas y refinadas durante:

- **Proyecto:** Sistema de Reservas (Laravel 12 + Filament 5.x + Livewire 4.x)
- **Fecha:** 2026-01-28
- **Contexto:** Implementación de gestión de usuarios con TDD estricto
- **Lecciones Aprendidas:**
  - TDD es el garante de calidad
  - Las pruebas deben estar construidas conforme a requerimientos funcionales
  - La coherencia en las pruebas es esencial
  - GitHub Issues son esenciales para seguimiento
  - Comunicación clara con el usuario es obligatoria

## Principios Fundamentales

1. **TDD Estricto**: Red → Green → Refactor
2. **Pruebas Primero**: No escribir código sin prueba que falle primero
3. **Coherencia**: Pruebas deben estar alineadas con requerimientos funcionales
4. **Verificación**: No declarar completado sin verificar que las pruebas están correctas
5. **Comunicación**: Siempre hacer lo solicitado O explicar por qué no se hizo

## Referencias

- **Laravel 12:** https://laravel.com/docs/12.x
- **Filament 5.x:** https://filamentphp.com/docs/5.x
- **Livewire 4.x:** https://livewire.laravel.com/docs/4.x
- **TDD Methodology:** Red-Green-Refactor cycle

---

**Última actualización:** 2026-01-28  
**Mantenido por:** Neftalí Yagua  
**Para uso en:** Proyectos Laravel + Filament + Livewire

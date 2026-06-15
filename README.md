# VGS Prestashop Test

Prueba técnica desarrollada sobre Prestashop 8 utilizando el framework de temas Falcon.

## Descripción General

Este repositorio contiene la personalización del tema Falcon para Prestashop 8 realizada como parte de la prueba técnica de VGS.

El objetivo fue replicar el diseño proporcionado en Figma manteniendo la funcionalidad nativa de Prestashop, trabajando exclusivamente sobre plantillas Smarty y estilos SCSS.

Se desarrollaron las siguientes vistas:

- Página de Categoría.
- Tarjeta de Producto (Product Card).
- Ficha de Producto (Product Detail).

Todas las modificaciones fueron realizadas sobre el tema Falcon sin alterar el núcleo de Prestashop.

---

## Tecnologías Utilizadas

- Prestashop 8.x
- Falcon Theme Framework
- Smarty (.tpl)
- SCSS
- Webpack
- Bootstrap (incluido en Falcon)

---

## Instalación

Clonar el repositorio:

```bash
git clone https://github.com/Icarrasquel/vgs-prestashop-test.git
cd vgs-prestashop-test
```

Ingresar al directorio de desarrollo del tema:

```bash
cd _dev
```

Instalar dependencias:

```bash
npm install
```

---

## Compilación de Assets

Compilar los assets:

```bash
npm run build
```

Opcionalmente, para desarrollo:

```bash
npm run watch
```

---

## Funcionalidades Implementadas

### 1. Página de Categoría

Se personalizó el listado de productos adaptándolo al diseño entregado en Figma.

Cambios realizados:

- Nueva estructura visual para Product Card.
- Rediseño de imagen de producto.
- Rediseño de título.
- Rediseño de precios.
- Botón de compra personalizado.
- Adaptación responsive.

Archivos principales modificados:

```text
templates/catalog/_partials/miniatures/product.tpl
templates/catalog/_partials/miniatures/_partials/product-title.tpl
templates/catalog/_partials/miniatures/_partials/product-prices.tpl
templates/catalog/_partials/miniatures/_partials/product-form.tpl
templates/catalog/_partials/product-flags.tpl
```

---

### 2. Ficha de Producto

Se rediseñó completamente la vista de detalle del producto respetando la funcionalidad nativa de Prestashop.

Cambios realizados:

- Layout de dos columnas.
- Galería de imágenes a la izquierda.
- Información comercial a la derecha.
- Rediseño del bloque de precios.
- Badge de descuento personalizado.
- Información de marca, referencia y disponibilidad.
- Rediseño del selector de cantidad.
- Botón de compra personalizado.
- Bloque de características del producto.
- Sección de información del producto.

Archivos principales modificados:

```text
templates/catalog/product.tpl
templates/catalog/_partials/product-prices.tpl
templates/catalog/_partials/product-add-to-cart.tpl
templates/catalog/_partials/product-tabs.tpl
```

---

## Estilos Personalizados

Se creó un nuevo componente SCSS para centralizar la personalización de la ficha de producto:

```text
_dev/css/product/components/vgs-product-detail/_vgs-product-detail.scss
```

Registrado en:

```text
_dev/css/product/components/_index.scss
```

---

## Validaciones Realizadas

Se verificó el correcto funcionamiento de:

- Listado de productos.
- Ficha de producto.
- Productos con descuento.
- Productos simples.
- Productos con variantes (tallas y colores).
- Cambio dinámico de precios.
- Cambio dinámico de imágenes.
- Agregado al carrito.
- Responsive en desktop, tablet y mobile.

---

## Dificultades Encontradas y Solución

### Configuración inicial del entorno

Una de las primeras dificultades fue la configuración completa del entorno de desarrollo.

Durante la instalación se detectaron dependencias requeridas por Falcon que inicialmente no estaban disponibles o no se encontraban correctamente configuradas, lo que impedía la compilación del tema y la ejecución normal del flujo de trabajo basado en Webpack.

Para resolverlo fue necesario revisar la documentación del framework, identificar las dependencias requeridas y completar manualmente la configuración hasta lograr una compilación exitosa mediante:

npm install
npm run build

Esto permitió disponer de un entorno completamente funcional para comenzar las personalizaciones solicitadas.

### Adaptación a Falcon y Prestashop

Al momento de realizar esta prueba no contaba con experiencia previa trabajando con Prestashop ni con el framework Falcon.

Para resolverlo fue necesario analizar la estructura de plantillas Smarty, comprender la organización de componentes SCSS y familiarizarse con el flujo de compilación basado en Webpack que incorpora Falcon.

Esto permitió identificar correctamente los archivos responsables de cada vista y realizar las personalizaciones solicitadas manteniendo la arquitectura del framework.

### Mantener la funcionalidad nativa

Uno de los principales desafíos fue modificar la presentación visual sin afectar funcionalidades críticas como:

- Variantes de productos.
- Actualización dinámica de precios.
- Cambio de imágenes.
- Proceso de agregado al carrito.

La solución consistió en reutilizar los bloques y variables nativas de Prestashop, limitando las modificaciones a la capa de presentación.

---

## Consideraciones Finales

Todas las personalizaciones fueron realizadas utilizando únicamente:

- Smarty (.tpl)
- SCSS
- Estructura nativa de Falcon

No se utilizaron constructores visuales ni módulos externos.

No se modificó el núcleo de Prestashop.

El objetivo principal fue replicar el diseño entregado respetando la arquitectura del framework Falcon y preservando el comportamiento nativo de Prestashop, especialmente en aspectos críticos como variantes, actualización dinámica de precios y proceso de compra.

---

## Autor

Isaac Carrasquel

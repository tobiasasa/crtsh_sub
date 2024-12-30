# CRTSH_SUB
El script toma como entrada un dominio, consulta la base de datos de crt.sh, filtra y procesa los resultados para extraer subdominios únicos asociados, 
ademas hace un filtro para eliminar comodines (*), y www en los subdominios encontrados. 
Esto lo convierte en una herramienta util para el pentesting y el bugbounty, haciendolo una buena opción, para agregarlo al repositorio de herramientas de enumeración de subdominio convencionales.

## Características:
- Consulta el servicio crt.sh para obtener certificados asociados al dominio.
- Procesa los resultados en formato JSON.
- Elimina subdominios comodín (*.) y entradas no deseadas como www.
- Ordena los subdominios y elimina duplicados.
- Guarda los resultados en un archivo t_domain.com.txt.

## Requisitos:
Herramientas necesarias para ejecutar el script.

- curl - Para realizar las consultas a crt.sh.
- jq - Para procesar los datos en formato JSON.
- sed y grep - Para filtrar y procesar las líneas.

## Instalación:
```bash
sudo apt update && sudo apt install curl jq sed grep -y
```
```bash
git clone https://github.com/tobiasasa/crtsh_sub
```

## Uso:
```bash
./crtsh_sub.sh domain.com
```

El listado de subdominios, se guardara bajo el nombre t_domain.com.txt en el directorio actual.

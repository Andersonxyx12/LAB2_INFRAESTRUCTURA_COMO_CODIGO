
**Autor:** Amilcar Anderson Cedano Baca
---

## 📁 Estructura del Proyecto

```text
LAB2_INFRAESTRUCTURA_COMO_CODIGO/
├── iac/                    # Terraform (Infraestructura)
├── src/
│   ├── web/                # Frontend (Nginx)
│   ├── api/                # Backend (Node.js)
│   └── db/                 # MySQL (Database)
└── README.md
🚀 Despliegue RápidoSigue estos pasos para levantar el entorno completo:Bash# 1. Construir imágenes de Docker
docker build -t lab/web src/web/
docker build -t lab/api src/api/
docker build -t lab/db src/db/

# 2. Inicializar y desplegar con Terraform
cd iac
terraform init
terraform workspace new dev || terraform workspace select dev
terraform apply -auto-approve

# Consultar datos de la DB vía API
curl http://localhost:4002/users
curl http://localhost:4002/products
🗄️ Gestión de Base de DatosPara acceder directamente al contenedor de la base de datos:Bashdocker exec -it mysql-dev-01 mysql -u root -p
# Password por defecto: root123
🧹 Limpieza del EntornoPara destruir la infraestructura creada por Terraform:Bashcd iac
terraform destroy -auto-approve

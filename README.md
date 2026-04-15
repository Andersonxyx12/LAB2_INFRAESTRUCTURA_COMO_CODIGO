
# LAB2 - Infraestructura como Código
# CEDANO BACA, AMILCAR ANDERSON
 LAB2 - Infraestructura como Código

## Despliegue

### 1. Construir imágenes Docker
```bash
docker build -t lab/web src/web/
docker build -t lab/api src/api/
docker build -t lab/db src/db/
2. Desplegar con Terraform
bash
cd iac
terraform workspace new dev
terraform init
terraform apply -auto-approve
3. Verificar contenedores
bash
docker ps
Acceso a la aplicación
Servicio	URL
Frontend	http://localhost:4001
Backend API	http://localhost:4002
Usuarios	http://localhost:4002/users
Productos	http://localhost:4002/products
Probar la API
bash
curl http://localhost:4002/
curl http://localhost:4002/users
Base de Datos
bash
docker exec -it mysql-dev-01 mysql -u root -p
# Password: root123
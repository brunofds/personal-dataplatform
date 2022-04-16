# personal-dataplatform

# Install checklist
- [X] Kubernetes
- [X] MiniKube
- Terraform
- Jenkins
- Airflow
- QGIS
- LocalStock (Cloud Service Emulator)
- Spark
- Oracle Data Integrator (ODI)
- Pentaho
  
# Configuration checklist
- [X] Minikube
- [X] Jenkins Helm
  - Add jenkins repo
  - Update repo
  - Create a persistent volume for controller Pod
  - Get admin password following official doc
- [X] Kubernetes
- Github (Webhook - Trigger events with POSTs)


# Ideas
- Build a local solution based on Kubernetes (with miniKube)
- Build a simple docker image containing the requirements libraries and execute python
- Install Jenkins over Kubernetes
- Configure the build pipeline between github and Jenkins
- Configure Airflow over Kubernetes
  - Create DAGs for consolidations (fire alarms and government contracts)
- Create API with FASTAPI
- Build a endpoint to get new tweets about a topic
  - The application must be hosted on AWS
  - Generate a CSV
  - Define the sentiment analysis (real time)
  - We can show csv data over BI Tool
  - Use Github, jenkins and Docker to upload a docker on EC2 instance.
- Build a endpoint to get fire alarms on specific regions
- BUild a endpoint to get data about government contracts
- Build a endpoint to create a DAG with a configuration file (yml)
- Build a pipeline to warn supervisors e get their feedback
  - E-mail server
  - Slack
- Use the LocalStack to test offline AWS Services
- Test 3
# personal-dataplatform

# Install checklist
- [X] Kubernetes
- [X] MiniKube
- [X] Terraform
- [X] Jenkins
- [X] Airflow 2.2.5
- QGIS
- LocalStock (Cloud Service Emulator)
- Spark
- Oracle Data Integrator (ODI)
- Pentaho
- Nginx
  
# Configuration checklist
- [X] Minikube
- [X] Jenkins Helm (helm is a package manager for Kubernates)
  - Add jenkins repo
  - Update repo
  - Create a persistent volume for controller Pod
  - Get admin password following official doc
  - Jenkins Reverse Proxy with Nginx or Apache
- [X] Airflow 2.2.5
- [X] Kubernetes
- Github (Webhook - Trigger events with POSTs)
  - It is only possible if you have a jenkins available on Internet (public IP)


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
- Test 4


# Airflow Configuration Steps and Tips
I tried to create and execute Airflow docker-compose on '/opt' directory, but I had permissions problems. It is better to create a folder on '/home/\<user\>' and follow [the Airflow documentation](https://airflow.apache.org/docs/apache-airflow/2.2.5/start/local.html).

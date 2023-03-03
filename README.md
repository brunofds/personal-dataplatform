# Personal-dataplatform

# Projects
## Pix integration API - Pagseguro
Integrate payments with Pix Integration with Pagseguro API
- [Pagbank Pix Documentation](https://documenter.getpostman.com/view/10863174/TVetc6HV?_ga=2.166319102.1751810140.1677731128-937475455.1650844592&_gl=1*18nh6kq*_ga*OTM3NDc1NDU1LjE2NTA4NDQ1OTI.*_ga_VZW8YVGM9B*MTY3NzgwOTgwOS4xLjEuMTY3NzgxMDY4MC4wLjAuMA..#c14c0301-87a0-42f4-9274-59a274e3d82e)
- [Bacen Pix API](https://github.com/bacen/pix-api)

# Install checklist
- [X] Kubernetes
- [X] MiniKube
- [X] Terraform
- [X] Jenkins
- [X] Airflow 2.2.5
- [X] FastAPI
- Kafka
- PostgreSQL (docker or Kubernetes)
- ElasticSearch
- Logstash
- QGIS
- LocalStock (Cloud Service Emulator)
- Spark
- Oracle Data Integrator (ODI)
- Pentaho
- Nginx
- PowerBI or Tableau Plublic
- DBT
  
  
# Configuration checklist
- [X] Minikube (require a hyvervisor such as VirtualBox)
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
- Using a business case to follow the steps to build a Data Warehouse. Think about Suzano's areas
  - Topics
    - Areas (country, states, cities, farms, allotment...)
    - Eucalyptus (age, volum, quantity, flag replanting and how many times it has been replanted ...)
    - Factory (final volum per area)
    - Logistics (distance, price, distance asphalt, toll cost, toll quantity)
    - Remote Sensing (NDVI per area, NDVI per satellite)
  - Business Modeling
  - Dimensional Modeling
  - Physical Modeling
- Test DataBase ACID
- Integration with different Web Services (AWS and Google Cloud)


# Airflow Configuration Steps and Tips
I tried to create and execute Airflow docker-compose on '/opt' directory, but I had permissions problems. It is better to create a folder on '/home/\<user\>' and follow [the Airflow documentation](https://airflow.apache.org/docs/apache-airflow/2.2.5/start/local.html).

# FastAPI
Follow the [oficial doc](https://fastapi.tiangolo.com/). It is simple and easy.


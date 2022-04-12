# personal-dataplatform

# Install checklist
- Kubernetes
- MiniKube
- Terraform
- Jenkins
- Airflow
- QGIS
  
# Configuration checklist
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
  - We can show da csv data over Grafana
- Build a endpoint to get fire alarms on specific regions
- BUild a endpoint to get data about government contracts
- Build a endpoint to create a DAG with a configuration file (yml)
- Build a pipeline to warn supervisors e get their feedback
  - E-mail server
  - Slack
- Use the LocalStack to test offline AWS Services
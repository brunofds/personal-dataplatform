from airflow import DAG
from airflow.utils.dates import days_ago
from airflow.operators.python_operator import PythonOperator

args = {
    'owner': 'bruno',
    'start_date': days_ago(1)
}

dag = DAG(dag_id='my_sample_dag', default_args=args, schedule_interval=None)

def run_this_func(**context):
    print('Hello people')

with dag:
    run_this_task = PythonOperator(
        task_id='run_this',
        python_callable=run_this_func,
        provide_context=True
    )
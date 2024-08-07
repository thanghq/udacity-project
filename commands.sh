ssh-keygen -t rsa
cat /home/odl_user/.ssh/id_rsa.pub
git clone git@github.com:thanghq/udacity-project.git
ls -ltr
cd udacity-project 
git pull
python3 -m venv ~/.azure-devops
source ~/.azure-devops/bin/activate
pip install -r requirements.txt
make all
export set FLASK_APP=app.py
flask run
./make_prediction.sh
az webapp up --sku F1 -n clarkflask --resource-group Azuredevops
./make_predict_azure_app.sh

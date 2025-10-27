
Question #9
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
A user accidentally deleted the MariaDB Deployment in the mariadb namespace, 
which was configured with persistent storage. Your responsibility is to
re-establish the Deployment while ensuring data is preserved by reusing the
available PersistentVolume (only one PV exists in mariadb NS).

Create a PersistentVolumeClaim (PVC) named mariadb in the mariadb NS with the specs:
Access mode needs to be ReadWriteOnce, and storage must be 250Mi

Edit MariaDB Deployment file located at ./CKA-Exam-Questions/mariadb-deploy.yaml to 
use the PVC created in the previous step. Then apply the updated Deployment file.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

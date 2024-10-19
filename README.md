# kubernetes_tp
ceci est mon rendu de tp kubernetes

J'ai utilisé un web service très simple codé avec spring boot java de github : https://github.com/bzdgn/docker-spring-boot-java-web-service-example.git

J'ai ensuite créé les fichiers de configurations deployment.yaml et service.yaml respectivement pour le déploiement et le service contenant 3 répliques du web service.

J'ai utilisé un cluster contenant un seul noeud, qui dans microk8s contient à la fois le control plane et les data planes.

Pour voir le résultat, veuillez éxecuter le fichier bash qui est un script pour appliquer le déploiement, service, forward l'app de l'interne en externe.

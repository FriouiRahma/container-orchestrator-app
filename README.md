L’application est déployée sur un cluster Kubernetes hébergé sur AWS.
Chaque composant (frontend, service A, service B) fonctionne dans son propre Deployment, exposé via un Service ClusterIP pour la communication interne.

Un Ingress NGINX Controller est utilisé pour exposer l'application au public.
Sur AWS, ce controller crée automatiquement un Elastic Load Balancer (ELB) qui reçoit le trafic externe et le transmet à l'Ingress.
<img width="506" height="464" alt="image" src="https://github.com/user-attachments/assets/4a56dca4-b280-4c90-b6fb-14f9aa5115d7" />


# Daniel Costa - AMQP 1.0 Java Example CLI App
Example with JMS, Java, AMQP 1.0 with Azure deployed using a Terraform Script

Based on the tutorial: 
- https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-java-how-to-use-jms-api-amqp
- http://qpid.apache.org/releases/qpid-jms-0.11.1/docs/index.html#amqp-configuration-options

Added a terraform file to deploy the necessary servicebus (AMQP 1.0 compatible service) on Azure.

---

To Run:

On Linux: 

	- az login
	- terraform init
	- terraform plan
	- terraform apply
	
	Get the output of the var: amqp_cs
	Update the servicebus.properties with the necessary authentication key found on the connection string
	Be aware that you should escape the special chars.

	- ./gradlew run

To Stop/Destroy:

	- terraform destroy

---

Please add a star if this was useful.

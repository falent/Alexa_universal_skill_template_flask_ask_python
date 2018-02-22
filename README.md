**There are three ways to set-up your environment for developing Alexa skills during our Hackathon  on February 26, 2018**. 
My solution is based on flask-ask and lokal docker environment. You can add to your development stack so many technologies you want. Everything is possible with Docker!

# 1 Amazon Developer Account

[Please register at the Amazon Developer Portal ](http://developer.amazon.com/)
It's free of charge. If you already have an Amazon account, then you don't have to register. You can use the credentials of your existing account. Without the Amazon Developer Console you won't be able to write an Alexa skill.

# 2 Docker Installation

Install [Docker CE (Community Edition)](https://docs.docker.com/engine/installation/#desktop) on your machine. To test your Docker installation execute the following command:

`$ sudo docker run hello-world`

# 3 Docker Containers 

Open a first terminal tab and clone my git repository from Github:

`$ git clone https://github.com/falent/Alexa_universal_skill_template_flask_ask_python.git  ~/Desktop/Template/Alexa_universal_skill_template_python `

Go to the cloned git repository:

`$ cd ~/Desktop/Template/Alexa_universal_skill_template_python`

Create a new Docker network:

`$ sudo docker network create myNetwork`


Open a new tab and run an _Alexa_ Docker container:

* On Linux:

  `$ sudo docker run -v ~/Desktop/Template/Alexa_universal_skill_template_python:/skill -it --network myNetwork --name alexa_python falent/alexa_python_flask_ask`
  
* On Windows:

  `$ docker run -v <ABSOLUTE_PATH_TO_CLONED_GIT_REPO>:/skill -it --network myNetwork --name alexa falent/alexa_python_flask_ask`
  
(it can happens that you wish to add more modules to your skill. In that case you just need to restart your container)

Now your docker container is ready to work. Just copy the ngrok address from a console!

You can add to your stack also any database f.e

Run a _MongoDB_ Docker container:

`$ sudo docker run --name mongo_database -d --network myNetwork -p 27017:27017 mongo --noauth `

Run a _DynamoDB_ Docker container:

* On Linux:

  `$ sudo docker run -v "$PWD":/dynamodb_local_db --network myNetwork -p 8000:8000 --name dynamo_database cnadiminti/dynamodb-local:latest`

* On Windows:

  `$ docker run -v //c/temp:/dynamodb_local_db --network myNetwork -p 8000:8000 --name dynamo_database cnadiminti/dynamodb-local`


# 4 Configuration
Please finish your configuration in Alexa Developer Portal


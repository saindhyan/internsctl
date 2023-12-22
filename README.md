# internsctl
# Scenario
## There is a customer who came to you with a problem to have a custom linux command for his operations. Your task is to understand the problem and create a linux command via bash script as per the instructions.
Command name - internsctl
Command version - v0.1.0

## Script flow
![flow](https://github.com/saindhyan/internsctl/assets/87525527/2f956d97-f5fd-4645-9b6d-3dcd52a428dd)



## Command man internsctl

-  --help     Display help and examples
- --version  Display command version
-  cpu getinfo            : Get CPU information of the server.
-  memory getinfo         : Get memory information of the server.
-  user create <username> : Create a new user with the given username.
-  user list              : List all regular users present on the server.
-  user list --sudo-only  : List all users with sudo permissions on the server.
    
![1](https://github.com/saindhyan/internsctl/assets/87525527/b2f961fa-5262-4ea5-84a5-0b0d67752df5)


## Command internsctl --help

-  --help     Display help and examples
  
![2](https://github.com/saindhyan/internsctl/assets/87525527/b2f961fa-5262-4ea5-84a5-0b0d67752df5)



## Command internsctl --version
- --version  Display command version
  ![3](https://github.com/saindhyan/internsctl/assets/87525527/3704280f-8eee-451b-a687-d3bdb4768dc4)

## Command internsctl memory getinfo
-  memory getinfo         : Get memory information of the server.
  ![4](https://github.com/saindhyan/internsctl/assets/87525527/2aaa9fc3-e0c5-43bb-a407-2f91fd5a736d)


## Command  internsctl cpu getinfo

-  cpu getinfo            : Get CPU information of the server.
 ![5](https://github.com/saindhyan/internsctl/assets/87525527/bf861821-2532-4fd4-92b0-32c0137b5462)

## Command internsctl user create <username>

-  user create <username> : Create a new user with the given username.
![6](https://github.com/saindhyan/internsctl/assets/87525527/0de0d73f-c4ea-4d91-ba25-1ea046acbb13)
## Command internsctl user list

  ![7](https://github.com/saindhyan/internsctl/assets/87525527/4ab5badb-effb-4928-ba45-08037aa8c544)


-  user list              : List all regular users present on the server.

## Commandi nternsctl user list --sudo-only

-  user list --sudo-only  : List all users with sudo permissions on the server.


## Command internsctl file getinfo <file-name>

-  file getinfo <file-name>            : Get File Info
  ![8]

## Command internsctl file getinfo [options] <file-name>

-  internsctl file getinfo --size <file-name>          : Get get file size
-  


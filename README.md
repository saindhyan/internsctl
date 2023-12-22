# internsctl
# Scenario
## There is a customer who came to you with a problem to have a custom linux command for his operations. Your task is to understand the problem and create a linux command via bash script as per the instructions.
Command name - internsctl
Command version - v0.1.0

## Script flow
![flow](https://github.com/saindhyan/internsctl/assets/87525527/2f956d97-f5fd-4645-9b6d-3dcd52a428dd)



## Command ``` $ man internsctl ```

-  --help     Display help and examples
- --version  Display command version
-  cpu getinfo            : Get CPU information of the server.
-  memory getinfo         : Get memory information of the server.
-  user create <username> : Create a new user with the given username.
-  user list              : List all regular users present on the server.
-  user list --sudo-only  : List all users with sudo permissions on the server.
    


## Command $ internsctl --help

-  --help     Display help and examples
  
![2](https://github.com/saindhyan/internsctl/assets/87525527/b2f961fa-5262-4ea5-84a5-0b0d67752df5)



## Command $ internsctl --version
- --version  Display command version
  ![3](https://github.com/saindhyan/internsctl/assets/87525527/3704280f-8eee-451b-a687-d3bdb4768dc4)

## Command $ internsctl memory getinfo
-  memory getinfo         : Get memory information of the server.
  ![4](https://github.com/saindhyan/internsctl/assets/87525527/2aaa9fc3-e0c5-43bb-a407-2f91fd5a736d)


## Command  $ internsctl cpu getinfo

-  cpu getinfo  : Get CPU information of the server.
 ![5](https://github.com/saindhyan/internsctl/assets/87525527/bf861821-2532-4fd4-92b0-32c0137b5462)

## Command $ internsctl user create piyush

-  user create piyush : Create a new user with the given username i.e. piyush.
![6](https://github.com/saindhyan/internsctl/assets/87525527/0de0d73f-c4ea-4d91-ba25-1ea046acbb13)
## Command $ internsctl user list

-  user list : List all regular users present on the server.

![7](https://github.com/saindhyan/internsctl/assets/87525527/4ab5badb-effb-4928-ba45-08037aa8c544)



## Commandi $ internsctl user list --sudo-only

-  user list --sudo-only  : List all users with sudo permissions on the server.
 result : piyush

## Command  $ internsctl file getinfo file.txt

-  file getinfo file.txt : Get File.txt Info
  ![8](https://github.com/saindhyan/internsctl/assets/87525527/f15bc56c-b51c-43b4-a86a-e3b3d5477afa)

## Command $ internsctl file getinfo [options] file.txt

-  --size, -s to print size
    example : $internsctl file grtinfo --size file.txt
![size](https://github.com/saindhyan/internsctl/assets/87525527/c6bd47ea-4445-4642-9913-d5b8eaea2be3)


-  --permissions, -p print file permissions
    example : $internsctl file grtinfo --permissions file.txt

![permissions](https://github.com/saindhyan/internsctl/assets/87525527/4966206e-4a22-4392-9839-69d2ee01dbbd)

-  --owner, o print file owner
  example : $internsctl file grtinfo --owner file.txt

![owner](https://github.com/saindhyan/internsctl/assets/87525527/6819faf1-22ad-4881-903b-6a70025ce6d3)
-  --last-modified, m
    example : $internsctl file grtinfo --last-modified file.txt

![modified](https://github.com/saindhyan/internsctl/assets/87525527/e5ea5bbc-0cd5-4e77-8365-8bea4f44c2df)


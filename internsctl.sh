#!/bin/bash

# Function to display the usage of the internsctl command
function show_usage() {
    	echo "Usage: internsctl [OPTION]"
    	echo "Options:"
    	echo "  --help     Display help and examples"
    	echo "  --version  Display command version"
    	echo "  cpu getinfo            : Get CPU information of the server."
    	echo "  memory getinfo         : Get memory information of the server."
    	echo "  user create <username> : Create a new user with the given username."
    	echo "  user list              : List all regular users present on the server."
    	echo "  user list --sudo-only  : List all users with sudo permissions on the server."
}

# Function to display the help and examples
function show_help() {
	echo "internsctl - Custom Linux command for operations"
    	echo ""
    	echo "Usage:"
    	echo "  internsctl [OPTION]"
    	echo ""
    	echo "Options:"
    	echo "  --help     Display help and examples"
    	echo "  --version  Display command version"
    	echo ""
    	echo "Examples:"
    	echo "  internsctl --help      Display help and examples"
    	echo "  internsctl --version   Display command version"
}

# Function to display the version of the internsctl command
function show_version() {
    	echo "internsctl v0.1.0"
}

# Function to get the CPU information
function get_cpu_info() {
    	lscpu
}

# Function to get memory information
function get_memory_info() {
	free
}

# Function to create a new user
function create_user() {
    	if [ $# -ne 1 ]; then
        	echo "Error: Username not provided."
        	echo "Usage: internsctl user create <username>"
        	exit 1
    	fi

    	username="$1"
    	sudo adduser --home /home/"$username" "$username"
}

# Function to list all regular users
function list_users() {
    	cut -d: -f1 /etc/passwd
}

# Function to list users with sudo permissions
function list_sudo_users() {
   	getent group sudo | cut -d: -f4
}

# Part-3 Function to get file information
function get_file_info() {
    local file_name=""
    local print_size=false
    local print_info=true
    local print_permissions=false
    local print_owner=false
    local print_last_modified=false

    # Parse the options
    while [[ $# -gt 0 ]]; 
	do
        case "$1" in
            "--size" | "-s" )
                print_size=true
		print_info=false
                shift
                ;;
            "--permissions" | "-p" )
                print_permissions=true
		print_info=false
                shift
                ;;
            "--owner" | "-o" )
                print_owner=true
		print_info=false
                shift
                ;;
            "--last-modified" | "-m" )
                print_last_modified=true
		print_info=false
                shift
                ;;
            * )
                if [ -z "$file_name" ]; 
		then
                    file_name="$1"
                    shift
                else
                    echo "Error: Invalid option or file name - $1"
                    echo "Usage: internsctl file getinfo [options] <file-name>"
                    echo "Options:"
                    echo "  --size, -s         : Print file size."
                    echo "  --permissions, -p  : Print file permissions."
                    echo "  --owner, -o        : Print file owner."
                    echo "  --last-modified, -m: Print last modified date and time."
                    exit 1
                fi
                ;;
        esac
    done

    if [ -z "$file_name" ]; 
	then
        echo "Error: File name not provided."
        echo "Usage: internsctl file getinfo [options] <file-name>"
        exit 1
    fi

    if [ ! -f "$file_name" ]; 
	then
        echo "Error: File not found."
        exit 1
    fi

    echo "File: $(basename "$file_name")"

    if [ "$print_info" = true ]; 
    then
        echo "Access: $(stat -c %A "$file_name")"
	echo "Size(B): $(stat -c %s "$file_name")"
        echo "Owner: $(stat -c %U "$file_name")"
        echo "Modify: $(stat -c %y "$file_name")"
    fi

    if [ "$print_permissions" = true ]; 
    then
        echo "Access: $(stat -c %A "$file_name")"
    fi

    if [ "$print_size" = true ]; 
    then
        echo "Size(B): $(stat -c %s "$file_name")"
    fi

    if [ "$print_owner" = true ]; 
    then
        echo "Owner: $(stat -c %U "$file_name")"
    fi

    if [ "$print_last_modified" = true ]; 
    then
        echo "Modify: $(stat -c %y "$file_name")"
    fi
}


if [ $# -eq 0 ]; 
then
    	show_usage
    	exit 1
fi

# Main script starts here
case "$1" in
	--help )
		show_help;;
	
	--version ) 
		show_version;;

    	"cpu" )
        	shift
        	if [ "$1" == "getinfo" ]; 
		then
            		get_cpu_info
        	else
            		show_usage
        	fi;;

    	"memory" )
        	shift
        	if [ "$1" == "getinfo" ]; 
		then
            		get_memory_info
        	else
            		show_usage
            	exit 1
        	fi;;

    	"user" )
        	shift
        	if [ "$1" == "create" ]; 
		then
            	shift
            		create_user "$1"
        	elif [ "$1" == "list" ]; 
		then
            	shift
            		if [ "$1" == "--sudo-only" ]; 
			then
                		list_sudo_users
            		else
                		list_users
            		fi
        	else
            		display_usage
            	exit 1
        	fi;;
	"file" )
        	case "$2" in 
			"getinfo" )
                		shift 2
                		get_file_info "$@";;
            		* )
                		echo "Error: Invalid subcommand '$2' for 'file' command."
                		exit 1 ;;
        	esac
		;;
esac
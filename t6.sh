#! /bin/bash
Enable () {
var1='please enter your option for enabling service: '
options=("1-cloudshell.googleapis.com" "2-cloudapis.googleapis.com" "sub menu quit")
select opt in "${options[@]}"
do
        case $opt in
                "1-cloudshell.googleapis.com")
                        echo "Enabling service cloudshell.googleapis.com"
                        gcloud services enable cloudshell.googleapis.com
                         echo "Enabled your service"
                         ;;
                "2-cloudapis.googleapis.com")
                        echo "Enabling service cloudapis.googleapis.com"
                        gcloud services enable cloudapis.googleapis.com
                        echo "Enabled your service"
                        ;;
                "sub menu quit")
                        return
                        ;;
                *) echo "invalid option $REPLY";;
        esac
done

}

var='please enter choice: '
choice=("choice1-List the available services" "choice2-List the enabled services" "choice3-Enable the service" "main menu exit")
select choice in "${choice[@]}"
do
        case $choice in
                "choice1-List the available services")
                        echo "listing all the services"
                        gcloud services list --available
                        ;;
                "choice2-List the enabled services")
                        echo "listing all the enabled services"
                        gcloud services list --enabled
                      ;;
                "choice3-Enable the service")
                        Enable
                        ;;
                "main menu exit")
                        exit
                        ;;
                *) echo "invalid option &REPLY";;
        esac
done

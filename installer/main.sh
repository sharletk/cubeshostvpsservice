writeLog() {
  printf "\033[0m#\033[0;4m\033[0;1m\033[0;${3}m${2}\033[0m: ${1}\n\n" 
}

conlog() {
  writeLog $1 LOG 92
}

coninfo() {
  writeLog $1 INFO 97
}

connotice() {
  writeLog $1 NOTICE 96
}

conwarn() {
  writeLog $1 WARN 93
}

conalert() {
  writeLog $1 ALERT 36
}

concritical() {
  writeLog $1 CRITICAL 95
}

conemergency() {
  writeLog $1 EMERGENCY 41
}

conerror() {
  writeLog $1 ERROR 98
}

condebug() {
  writeLog $1 DEBUG 92
}

conlogo() {
  echo -e "/*
*  
* ░█████╗░██╗░░░██╗██████╗░███████╗░██████╗██╗░░██╗░█████╗░░██████╗████████╗
* ██╔══██╗██║░░░██║██╔══██╗██╔════╝██╔════╝██║░░██║██╔══██╗██╔════╝╚══██╔══╝
* ██║░░╚═╝██║░░░██║██████╦╝█████╗░░╚█████╗░███████║██║░░██║╚█████╗░░░░██║░░░
* ██║░░██╗██║░░░██║██╔══██╗██╔══╝░░░╚═══██╗██╔══██║██║░░██║░╚═══██╗░░░██║░░░
* ╚█████╔╝╚██████╔╝██████╦╝███████╗██████╔╝██║░░██║╚█████╔╝██████╔╝░░░██║░░░
* ░╚════╝░░╚═════╝░╚═════╝░╚══════╝╚═════╝░╚═╝░░╚═╝░╚════╝░╚═════╝░░░░╚═╝░░░
*
* Quick and easy installer scripts for VPS service.
* Visit https://github.com/sharletp/cubeshostvpsservice for more information.
*
* Copyright ©️ 2021 Cubes Hosting - All Rights Reserved.
*
*/"
}
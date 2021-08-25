writeLog() {
  clear
  parsedData=("${@:3} ")
  printf "\033[0m#\033[0;4m\033[0;1m\033[0;${2}m${1}\033[0m: ${parsedData[*]}\n\n"
  sleep 1
}

conlog() {
  writeLog LOG 92 $*
}

coninfo() {
  writeLog INFO 97 $*
}

connotice() {
  writeLog NOTICE 96 $*
}

conwarn() {
  writeLog WARN 93 $*
}

conalert() {
  writeLog ALERT 36 $*
}

concritical() {
  writeLog CRITICAL 95 $*
}

conemergency() {
  writeLog EMERGENCY 41 $*
}

conerror() {
  writeLog ERROR 98 $*
}

condebug() {
  writeLog DEBUG 92 $*
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

checkRoot() {
  if [[ $EUID -ne 0 ]]; then
    read -p "Do you want to proceed installing as a root user? (y/n)" answer
    case ${answer:0:1} in
    y | Y)
      echo Continuing with installation..
      ;;
    *)
      echo Terminating installation script.;
      exit
      ;;
    esac
  fi
}

shopt -s histappend

readonly USER=`whoami`
readonly HISTIGNORE=""
#readonly HISTSIZE=100000
#readonly HISTFILESIZE=200000
readonly PROMPT_COMMAND="LOG_COMMAND"
#readonly HISTCONTROL=""
readonly HISTTIMEFORMAT="%F %T "

if [ $EUID -ne 0 ]; then
  readonly HISTFILE="/home/${USER}/.bash_history"
else
  readonly HISTFILE="/root/.bash_history"
fi

IP=`who --ips -mus |awk '{print $5}'`
LOG_SSL="/var/log/sshlog/${USER}.log"

if [ -z ${SSH_USER} ]; then
  DATA="${USER} ${IP}"
else
  DATA="${SSH_USER} ${IP}"
fi

function LOG_COMMAND {
  history -a >(tee -a ${HISTFILE} | xargs --no-run-if-empty echo `date "+%b %e %k:%M:%S %Y"` ${DATA} ${PWD} 2>/dev/null >> ${LOG_SSL})

  if [ -e ${LOG_SSL} ] ; then
     perm=$(stat -c %a ${LOG_SSL})
     grupo=$(stat -c %G ${LOG_SSL})
     if [ "$perm" != "640" ] || [ "$grupo" != "adm" ] && [ "$USER" == "root" ] ; then
        chmod 640 ${LOG_SSL}
    chown :adm ${LOG_SSL}
     fi
  fi
}

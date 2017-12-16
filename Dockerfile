FROM jordi/ubuntu

RUN apt update && apt install -y wget sudo 

ENV BRANCH master
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-distroupdate.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-basepackages.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-git.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-emacs.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-zsh.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-byobu.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-powerlinefonts.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-golang.sh -O -)"
RUN apt install -y python
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-awscli.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-kops.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-nodejs.sh -O -)"
RUN apt install -y apt-utils
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-docker.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-java.sh -O -)"
RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-chrome.sh -O -)"
  
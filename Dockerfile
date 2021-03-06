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
# RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-docker.sh -O -)"
# RUN curl -sSL https://get.docker.com/ | sh

RUN apt-get install -y docker.io

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

RUN curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
RUN chmod +x kops-linux-amd64
RUN mv kops-linux-amd64 /usr/local/bin/kops


# RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-java.sh -O -)"
# RUN bash -c "$(wget https://raw.githubusercontent.com/jig/myubuntu/$BRANCH/install-chrome.sh -O -)"
  
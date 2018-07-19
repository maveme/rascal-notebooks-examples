FROM maveme/rascal-notebook:1.1

# ADD . /kernel

# RUN jupyter kernelspec install kernel/rascal-kernel/rascal

ENV NB_USER mauricio
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

# COPY . ${HOME}
# USER root
# RUN chown -R ${NB_UID} ${HOME}
# USER ${NB_USER}


#CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--allow-root"]
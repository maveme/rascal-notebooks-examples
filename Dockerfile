FROM maveme/rascal-notebook:1.1

ENV NB_USER mauricio
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

# RUN adduser --disabled-password \
#     --gecos "Default user" \
#     --uid 1000 \
#     mauricio

# COPY . /home/mauricio
# USER root
# RUN chown -R 1000 /home/mauricio
# USER mauricio


#CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
CMD ["sudo","jupyter", "notebook", "--ip", "0.0.0.0", "--allow-root"]
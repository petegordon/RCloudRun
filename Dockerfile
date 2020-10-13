# start from the rocker/r-ver:4.0.2 image
FROM rocker/r-ver:4.0.2

# install the linux libraries needed for plumber
RUN apt-get update -qq && apt-get install -y \
  libssl-dev \
  libcurl4-gnutls-dev

# install plumber
RUN R -e "install.packages('plumber')"

# copy everything from the current directory into the container
COPY / /

# open port 8080 to traffic
EXPOSE 8080

# when the container starts, start the main.R script
ENTRYPOINT ["Rscript", "main.R"]

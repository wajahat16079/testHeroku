FROM termzie/randomrpackages
COPY renv.lock renv.lock
RUN R -e 'renv::restore()'
COPY testHeroku_*.tar.gz /app.tar.gz
RUN R -e 'remotes::install_local("/app.tar.gz",upgrade="never")'
RUN rm /app.tar.gz
CMD R -e "options('shiny.port'=$PORT,shiny.host='0.0.0.0','golem.app.prod' = T,'shiny.autoload.r' = F);library(testHeroku);testHeroku::run_app()"

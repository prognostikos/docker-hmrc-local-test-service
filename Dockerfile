FROM openjdk:7-jdk

ENV LTS_URL=https://www.tpvs.hmrc.gov.uk/tools/v2/LTS5.5.zip

ENV LTS_HOME=/HMRCTools/LTS
ENV LTS_SCRIPT=/HMRCTools/LTS/RunLTSStandalone.sh

ENV RIM_DIR=/HMRCTools/RIMArtefacts

RUN curl $LTS_URL > /lts.zip && \
  unzip /lts.zip && \
  rm /lts.zip && \
  chmod +x $LTS_SCRIPT

COPY RIMArtefacts/Charity $RIM_DIR/Charity
COPY validatorConfig.xml $LTS_HOME/resources/config/NonConfigurable

EXPOSE 5665

CMD $LTS_SCRIPT

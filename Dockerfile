FROM xieqihui/ml_dev:gpu_py2
WORKDIR /root
COPY requirements.txt /root/requirements.txt
RUN source activate base \
    && pip install -r requirements.txt
RUN rm requirements.txt

CMD jupyter lab --ip=0.0.0.0 --port=8889 --allow-root

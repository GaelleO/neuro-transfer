FROM python:3

ADD nst_utils.py /
ADD NeuralTransfer.py /
ADD images/ images/
ADD output/ output/
VOLUME output/


RUN pip install pystrich
RUN pip install scipy
RUN pip install matplotlib
RUN pip install Pillow
RUN pip install tensorflow

CMD [ "python", "./NeuralTransfer.py" ]
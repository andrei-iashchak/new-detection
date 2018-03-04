FROM tensorflow/tensorflow
COPY . ./
RUN export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
RUN apt-get update
RUN apt-get install python3-tk -y
RUN pip3 install -r requirements.txt
RUN python3 object_detection/object_detection_runner.py

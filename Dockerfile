FROM tensorflow/tensorflow
COPY . ./
RUN pip install -r requirements.txt
RUN export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
RUN apt-get update
RUN apt-get install python3-tk -y
RUN python3 object_detection/object_detection_runner.py

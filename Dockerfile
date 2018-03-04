FROM tensorflow/tensorflow
COPY . ./
RUN pip install -r requirements.txt
RUN export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
RUN protoc object_detection/protos/*.proto --python_out=.
RUN python object_detection/object_detection_runner.py

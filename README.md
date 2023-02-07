# 2DShapeGenerator

The generator can create many shapes specified in the **generator/shapes.py** file. It can center a character onto the shape. The created shapes are exported into a **.png** file at maximum size.

These images can then be resized and moved around to create some modified training data.

## Create and Activate Python Virtual Environment

Make the virtual environment
```
python -m venv myenv
```

Activate the venv
```
myenv\Scripts\activate
```

Once you see this, you are in a virtual environment and you are not affecting your system wide Python installation
```
(myenv) C:\path\to\repository>
```

To deactivate the venv
```
deactivate
```
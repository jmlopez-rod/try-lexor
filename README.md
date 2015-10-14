# Try Lexor

Since lexor is still in its development stages I am creating this
repo which will contain all the releases of the lexor modules so that
I may test it out.

## Python Enviroment

For this we need the following

1. pip: https://pip.pypa.io/en/stable/installing/
2. virtual_env: `pip install virtualenv`
3. autoenv: `brew install autoenv`

The we can run

    make pip

This will create the virtual enviroment if it hasn't been setup yet
and install all the python dependencies for this project. Finally lets
activate the virtual enviroment

    source .env

## Lexor modules

To install the modules enter

    lexor install

This should read the configuration file and install all the
dependencies we are trying out.

## Example

Lets try to convert the html example file in the example directory

    $ lexor examples/example.html to html

The output obtain should be the following

```html
<html>
<header>
<!-- Include scripts and css stuff here? -->
</header>
<body>
<table><tr><th>x</th><th>f(x)</th></tr> <tr><td>0</td><td>0</td></tr>
<tr><td>1</td><td>1</td></tr> <tr><td>2</td><td>4</td></tr>
<tr><td>3</td><td>9</td></tr> <tr><td>4</td><td>16</td></tr>
<tr><td>5</td><td>25</td></tr> <tr><td>6</td><td>36</td></tr>
<tr><td>7</td><td>49</td></tr> <tr><td>8</td><td>64</td></tr>
<tr><td>9</td><td>81</td></tr> </table>
</body>
</html>
```

The writer style has an option to allow us to write some tags as
blocks, that is, when a tagname is encountered we first write a new
line and start writing the tagname. In this case we want to make each
table row to start at a new line.

    $ lexor examples/example.html to html[_:html._@add_block=tr]

```html
<html>
<header>
<!-- Include scripts and css stuff here? -->
</header>
<body>
<table>
<tr><th>x</th><th>f(x)</th></tr>
<tr><td>0</td><td>0</td></tr>
<tr><td>1</td><td>1</td></tr>
<tr><td>2</td><td>4</td></tr>
<tr><td>3</td><td>9</td></tr>
<tr><td>4</td><td>16</td></tr>
<tr><td>5</td><td>25</td></tr>
<tr><td>6</td><td>36</td></tr>
<tr><td>7</td><td>49</td></tr>
<tr><td>8</td><td>64</td></tr>
<tr><td>9</td><td>81</td></tr>
</table>
</body>
</html>
```

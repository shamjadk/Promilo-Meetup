# Promilo Meetup
A simple application with authentication by post request. There are 2 pages which have simple UI and sharing feature.


||  |
|--|--|
| Architecture | MVC |
|State management|Riverpod|

## Note
There is a small problem with API . Sometimes an exception being thrown when try to login. But, sometimes there is no exception and successfully getting logged in.

To use riverpod provider, There is a riverpod generated file that must be generated to execute the code. Run "**dart run build_runner build**" in your command prompt to generate needed files. Otherwise exception will occure.

# Promilo Meetup
A simple application with authentication by post request. There are 2 pages which have simple UI and sharing feature.


||  |
|--|--|
| Architecture | MVC |
| State management |Riverpod|
| Router |Flutter default router(Navigator)|

## Note
There is a small problem with API . Sometimes an exception being thrown when try to login. But, sometimes there is no exception and successfully getting logged in.

To generate freezed and riverpod files run "**dart run build_runner build**" in your command prompt to generate needed files.These files are required to execute the code. Otherwise exception will occure.

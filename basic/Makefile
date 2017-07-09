



all: array quick_sort hello_world

array: array.pas
	fpc -Mdelphi $<

quick_sort: quick_sort.pas
	fpc -Mdelphi $< 

hello_world: hello_world.pas
	fpc -Mdelphi $<

clean:
	-rm array quick_sort hello_world
	-rm array.o quick_sort.o hello_world.o

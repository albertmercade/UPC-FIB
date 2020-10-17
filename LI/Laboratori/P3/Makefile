file = bus

$(file): $(file).pl
	swipl -O -g main --stand_alone=true -o $(file) -c $(file).pl
clean:
	rm -f $(file)

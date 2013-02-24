I expect it to take me six hours to go from learning erlang to producing a ceaser cipher solution

Hour 1: Read some of Learn you Some Erlang
Hour 2: Learned Erlang is horrible with strings
	A-Z: 65-90
	a-z: 97-122

So, we will have to do...
	
	encrypt(list, int) {
		if all(list in lower) {
			foreach e in list:
				((e - 97) % 26) + 97 + int
		}
		else if all(list in upper) {
				((e - 65) % 26) + 65 + int
		}
		else ERROR
	}		

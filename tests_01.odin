package test

import "core:fmt"
import "core:sys/windows"
import "core:time"
print :: fmt.println

main :: proc() {

	windows.SetConsoleOutputCP(windows.CODEPAGE.UTF8)
	start: time.Time = time.now()

	// code goes here
	val := bin(9)
	res := binaryGap(val)
	print(res)

	free_all(context.temp_allocator)

	elapsed: time.Duration = time.since(start)
	print("Odin took:", elapsed)

	// OUTPUT:
	// 2
	// Odin took: 182.9µs
}

binaryGap :: proc(s: string) -> int {
	count := 1
	max_count := 0
	for i in 1 ..< len(s) {
		if s[i - 1] == s[i] && s[i] == '0' {
			count += 1
			if max_count < count {
				max_count = count
			}
		} else {
			count = 1
		}
	}

	return max_count
}

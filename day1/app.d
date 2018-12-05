#!/bin/rdmd
import std.stdio;
import std.range;
import std.algorithm;
import std.conv;
import core.stdc.stdlib;

void main() {
	write("Part 1: ");
	File("input1")
		.byLine
		.map!(x => to!int(x))
		.sum
		.writeln;

	writeln;

	write("Part 2: ");
	bool[int] seen;
	int result;
	while (true)
		File("input2")
			.byLine
			.map!(x => to!int(x))
			.each!((x) {
					result += x;
					if (result in seen) {
						writeln(result);
						exit(0);
					}
					seen[result] = true;
				});
}
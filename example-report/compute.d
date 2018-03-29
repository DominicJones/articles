#!/usr/bin/rdmd

import std.file;
import std.stdio;
import std.conv;
import std.math;

void main(string[] args)
{
  foreach(arg; args[1..$])
  {
    auto x = to!double(arg);
    auto f = x^^2;
    writefln("%s %s", x, f);
  }
}

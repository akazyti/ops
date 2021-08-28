# Makefile BoilerPlate

SRC_DIR = src
BUILd_DIR = build
TMP_DIR = tmp
INCLUDE_DIR = include
DEP_DIR = lib
APPLICATION_NAME = app

# Some Implict Flags

CXX = g++
CXXFLAGS = -Wall -Iinclude

%.cc: %.o
	$(CXX) $(CXXFLAGS) $(BUILd_DIR)/$^


$(APPLICATION_NAME):
	$(CXX) $(CXXFLAGS) $^




.PHONY : clean

clean:
	rm -rf $(BUILd_DIR)/*

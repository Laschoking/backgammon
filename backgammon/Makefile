# Our code tries to conform to Single Unix Specification v4.
# See feature_test_macros man page.

CC       := $(CXX) # Make sure we always use the C++ compiler/linker
CPPFLAGS := -D_POSIX_C_SOURCE=200112L -D_XOPEN_SOURCE=600
CXXFLAGS := -MMD -Og -g3 -std=c++11 -Wall -Wextra -Wshadow -Iinclude/ -fPIC
CXXFLAGS += -ftrapv -pedantic -Wpedantic
SANITIZE := -fsanitize=address -fsanitize=undefined
INT_PLAYERS := example-player
EXT_PLAYERS := my-player
TARGETS     := mcp $(INT_PLAYERS) $(EXT_PLAYERS)

SRC_common  := state.cc
SRC_intern  := state-internal-$(shell uname -s)-$(shell uname -m).s
SRC_mcp     := mcp.cc
SRC_players := $(INT_PLAYERS:=.cc) $(EXT_PLAYERS:=.cc)
SRC_all     := $(SRC_mcp) $(SRC_common) $(SRC_players)


# Default target - build everything
all: $(TARGETS)

# Test whether the compiler supports sanitisers (only once!)
NO_SANI ?= $(shell echo "int main(){}" | $(CXX) $(SANITIZE) -x c++ -o /dev/null -; echo $$?)


# Template rule for players
# (https://www.gnu.org/software/make/manual/make.html#Eval-Function)
define PLAYER_template
 # Add own file and plain commons to all players
 $(1): $(1).o $(SRC_common:.cc=.o)
 # Add internals to internal players
 ifeq ($(2),int)
  $(1): $(SRC_intern:.s=.o)
 else
  # Add sanitisers to external players iff sanitisers were found to work properly
  # These player are NOT linked against 'state-internal-*.s'!
  ifeq ($(NO_SANI),0)
   $(1): CXXFLAGS += $(SANITIZE)
   $(1): LDFLAGS  += $(SANITIZE)
  endif
  # Apply additional STL checks for external players
  $(1): CPPFLAGS += -D_GLIBCXX_DEBUG
 endif
endef

# Generate rules for all players from the previous template
$(foreach player,$(EXT_PLAYERS),$(eval $(call PLAYER_template,$(player),ext)))
$(foreach player,$(INT_PLAYERS),$(eval $(call PLAYER_template,$(player),int)))

# Additional sources/flags for specific players (if needed)
#
# my-player: CXXFLAGS += -Imy-header-dir/ -Werror
# my-player: my-class.o

# Additional sources for other binaries
mcp: $(SRC_mcp:.cc=.o) $(SRC_intern:.s=.o) $(SRC_common:.cc=.o)


# Convenience targets for execution
demo: mcp example-player example-player
	./$+ || true

fight: mcp my-player my-player
# No memory limits when sanitisers are used
ifeq ($(NO_SANI),0)
	./$< -t 60 -T 61 $(filter-out $<,$+) || true
else
	./$< -t 60 -T 61 -m 1024 -M 1024 $(filter-out $<,$+) || true
endif

run: mcp my-player example-player
	./$+ || true


# Directory clean up
clean:
	rm -f -- $(TARGETS) $(wildcard *.[do])

purge: clean
	rm -f -- core *~ include/*~ *.s


# Manual
help:
	@echo "make all       Build everything"
	@echo "make demo      Two example (keyboard) players play against each other"
	@echo "make fight     Two instances of your player play with contest rules"
	@echo "make run       The keyboard player plays against your player"


# Rebuild everything when the Makefile was changed
$(SRC_all:.cc=.o) $(SRC_common:.cc=.san.o): Makefile

# Update assembler code iff corresponding source code is available
ifneq ($(wildcard state-internal.cc),)
$(SRC_intern): state-internal.cc
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -g0 -Os -m32 -S -o state-internal-$(shell uname -s)-i686.s   $<
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -g0 -Os -m64 -S -o state-internal-$(shell uname -s)-x86_64.s $<
endif


# Include dependency information
-include $(SRC_all:.cc=.d)


.PHONY: all auto demo fight fun run test clean purge help

# EOF

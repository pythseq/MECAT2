ifeq "$(strip ${BUILD_DIR})" ""
  BUILD_DIR    := ../../$(OSTYPE)-$(MACHINETYPE)/obj
endif
ifeq "$(strip ${TARGET_DIR})" ""
  TARGET_DIR   := ../../$(OSTYPE)-$(MACHINETYPE)/bin
endif

TARGET   := mecat2splitreads
SOURCES  := \
	cmdline_args.cpp \
	main.c \
	split_reads.c \
	../common/range_list.c \
	../common/m4_aux.c \

SRC_INCDIRS  := .

TGT_LDFLAGS := -L${TARGET_DIR}
TGT_LDLIBS  := -lhbn
TGT_PREREQS := libhbn.a

SUBMAKEFILES :=
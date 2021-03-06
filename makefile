CC      = mpic++
CFLAGS  = -Wall -O
INCLUDEFLAGS = -I ./Core -I ./Collection
#LDFLAGS = /home/septicmk/lib/lib/libboost_serialization.so /home/septicmk/lib/lib/libboost_mpi.so
OBJS    = ./Core/Core.o ./Collection/Flexible_vector.o ./Collection/Collection.o
TARGETS = main

.PHONY:all 
all:$(TARGETS)
main: main.o $(OBJS)
	$(CC) -o $@ $^ 
%.o:%.cpp
	$(CC) -o $@ -c $< $(CFLAGS) $(INCLUDEFLAGS)
%.d:%.cpp
	@set -e; rm -f $@; $(CC) -MM $< $(INCLUDEFLAGS) > $@.$$$$; \
		sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
		rm -f $@.$$$$
-include $(OBJS:.o=.d)
.PHONY:clean 
clean:
	@rm -f $(TARGETS)
	@find ./ -name *.o -o -name *.d -o -name *.d.* | xargs rm -f
